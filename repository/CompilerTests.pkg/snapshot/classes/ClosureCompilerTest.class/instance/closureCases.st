
!ClosureCompilerTest methodsFor: 'source'!
closureCases
	^#(
'| n |
n := 1.
^n + n'

'| i |
i := 0.
[i := i + 1.
 i <= 10] whileTrue.
^i'

'[:c :s| | mn |
mn := Compiler new
		compile: (c sourceCodeAt: s)
		in: c
		notifying: nil
		ifFail: [self halt].
mn generate: #(0 0 0 0).
{mn blockExtentsToTempsMap.
  mn encoder schematicTempNames}]
			value: AbstractInstructionTests
			value: #runBinaryConditionalJumps:'

'inject: thisValue into: binaryBlock
	| nextValue |
	nextValue := thisValue.
	self do: [:each | nextValue := binaryBlock value: nextValue value: each].
	^nextValue'
"
'runBinaryConditionalJumps: assertPrintBar
	CogIA32CompilerTests new runBinaryConditionalJumps: false
	| mask reg1 reg2 reg3 |
	mask := 1 << self processor bitsInWord - 1.
	self concreteCompilerClass dataRegistersWithAccessorsDo:
		[:n :get :set|
		n = 0 ifTrue: [reg1 := get].
		n = 1 ifTrue: [reg2 := set].
		n = 2 ifTrue: [reg3 := set]].
	#(	(JumpAbove > unsigned)			(JumpBelowOrEqual <= unsigned)
		(JumpBelow < unsigned)			(JumpAboveOrEqual >= unsigned)
		(JumpGreater > signed)			(JumpLessOrEqual <= signed)
		(JumpLess < signed)				(JumpGreaterOrEqual >= signed)
		(JumpZero = signed)				(JumpNonZero ~= signed)) do:
		[:triple|
		[:opName :relation :signednessOrResult| | opcode jumpNotTaken jumpTaken nop memory bogus |
		self resetGen.
		opcode := CogRTLOpcodes classPool at: opName.
		self gen: CmpRR operand: 2 operand: 1.
		jumpTaken := self gen: opcode.
		self gen: MoveCqR operand: 0 operand: 0.
		jumpNotTaken := self gen: Jump.
		jumpTaken jmpTarget: (self gen: MoveCqR operand: 1 operand: 0).
		jumpNotTaken jmpTarget: (nop := self gen: Nop).
		memory := self generateInstructions.
		bogus := false.
		self pairs: (-2 to: 2)  do:
			[:a :b| | taken |
			self processor
				reset;
				perform: reg2 with: a signedIntToLong;
				perform: reg3 with: b signedIntToLong.
			[self processor singleStepIn: memory.
			 self processor pc ~= nop address] whileTrue.
			taken := (self processor perform: reg1) = 1.
			assertPrintBar
				ifTrue:
					[self assert: taken = (signednessOrResult == #unsigned
											ifTrue: [(a bitAnd: mask) perform: relation with: (b bitAnd: mask)]
											ifFalse: [a perform: relation with: b])]
				ifFalse:
					[Transcript
						nextPutAll: reg2; nextPut: $(; print: a; nextPutAll: '') ''; nextPutAll: relation; space;
						nextPutAll: reg3; nextPut: $(; print: b; nextPutAll: '') = '';
						print: taken; cr; flush.
					 taken = (signednessOrResult == #unsigned
											ifTrue: [(a bitAnd: mask) perform: relation with: (b bitAnd: mask)]
											ifFalse: [a perform: relation with: b]) ifFalse:
						[bogus := true]]].
			 bogus ifTrue:
				[self processor printRegistersOn: Transcript.
				 Transcript show: (self processor disassembleInstructionAt: jumpTaken address In: memory); cr]]
					valueWithArguments: triple]'"

'mapFromBlockStartsIn: aMethod toTempVarsFrom: schematicTempNamesString constructor: aDecompilerConstructor
	| map |
	map := aMethod
				mapFromBlockKeys: aMethod startpcsToBlockExtents keys asSortedCollection
				toSchematicTemps: schematicTempNamesString.
	map keysAndValuesDo:
		[:startpc :tempNameTupleVector| | subMap tempVector numTemps |
		subMap := Dictionary new.
		"Find how many temp slots there are (direct & indirect temp vectors)
		 and for each indirect temp vector find how big it is."
		tempNameTupleVector do:
			[:tuple|
			tuple last isArray
				ifTrue:
					[subMap at: tuple last first put: tuple last last.
					 numTemps := tuple last first]
				ifFalse:
					[numTemps := tuple last]].
		"create the temp vector for this scope level."
		tempVector := Array new: numTemps.
		"fill it in with any indirect temp vectors"
		subMap keysAndValuesDo:
			[:index :size|
			tempVector at: index put: (Array new: size)].
		"fill it in with temp nodes."
		tempNameTupleVector do:
			[:tuple| | itv |
			tuple last isArray
				ifTrue:
					[itv := tempVector at: tuple last first.
					 itv at: tuple last last
						put: (aDecompilerConstructor
								codeTemp: tuple last last - 1
								named: tuple first)]
				ifFalse:
					[tempVector
						at: tuple last
						put: (aDecompilerConstructor
								codeTemp: tuple last - 1
								named: tuple first)]].
		"replace any indirect temp vectors with proper RemoteTempVectorNodes"
		subMap keysAndValuesDo:
			[:index :size|
			tempVector
				at: index
				put: (aDecompilerConstructor
						codeRemoteTemp: index
						remoteTemps: (tempVector at: index))].
		"and update the entry in the map"
		map at: startpc put: tempVector].
	^map'

 'gnuifyFrom: inFileStream to: outFileStream

"convert interp.c to use GNU features"

	| inData beforeInterpret inInterpret inInterpretVars beforePrimitiveResponse inPrimitiveResponse |

	inData := inFileStream upToEnd withSqueakLineEndings.
	inFileStream close.

	"print a header"
	outFileStream
		nextPutAll: ''/* This file has been post-processed for GNU C */'';
		cr; cr; cr.

	beforeInterpret := true.    "whether we are before the beginning of interpret()"
	inInterpret := false.     "whether we are in the middle of interpret"
	inInterpretVars := false.    "whether we are in the variables of interpret"
	beforePrimitiveResponse := true.  "whether we are before the beginning of primitiveResponse()"
	inPrimitiveResponse := false.   "whether we are inside of primitiveResponse"
	''Gnuifying''
		displayProgressAt: Sensor cursorPoint
		from: 1 to: (inData occurrencesOf: Character cr)
		during:
			[:bar | | lineNumber |
			lineNumber := 0.
			inData linesDo:
				[ :inLine | | outLine extraOutLine caseLabel |
				bar value: (lineNumber := lineNumber + 1).
				outLine := inLine. 	"print out one line for each input line; by default, print out the line that was input, but some rules modify it"
				extraOutLine := nil.   "occasionally print a second output line..."
				beforeInterpret ifTrue: [
					inLine = ''#include "sq.h"'' ifTrue: [
						outLine := ''#include "sqGnu.h"'' ].
					inLine = ''interpret(void) {'' ifTrue: [
						"reached the beginning of interpret"
						beforeInterpret := false.
						inInterpret := true.
						inInterpretVars := true ] ]
				ifFalse: [
				inInterpretVars ifTrue: [
					(inLine findString: ''register struct foo * foo = &fum;'') > 0 ifTrue: [
						outLine := ''register struct foo * foo FOO_REG = &fum;'' ].
					(inLine findString: '' localIP;'') > 0 ifTrue: [
						outLine := ''    char* localIP IP_REG;'' ].
					(inLine findString: '' localFP;'') > 0 ifTrue: [
						outLine := ''    char* localFP FP_REG;'' ].
					(inLine findString: '' localSP;'') > 0 ifTrue: [
						outLine := ''    char* localSP SP_REG;'' ].
					(inLine findString: '' currentBytecode;'') > 0 ifTrue: [
						outLine := ''    sqInt currentBytecode CB_REG;'' ].
					inLine isEmpty ifTrue: [
						"reached end of variables"
						inInterpretVars := false.
						outLine := ''    JUMP_TABLE;''.
						extraOutLine := inLine ] ]
				ifFalse: [
				inInterpret ifTrue: [
					"working inside interpret(); translate the switch statement"
					(inLine beginsWith: ''		case '') ifTrue: [
						caseLabel := (inLine findTokens: ''	 :'') second.
						outLine := ''		CASE('', caseLabel, '')'' ].
					inLine = ''			break;'' ifTrue: [
						outLine := ''			BREAK;'' ].
					inLine = ''}'' ifTrue: [
						"all finished with interpret()"
						inInterpret := false ] ]
				ifFalse: [
				beforePrimitiveResponse ifTrue: [
					(inLine beginsWith: ''primitiveResponse('') ifTrue: [
						"into primitiveResponse we go"
						beforePrimitiveResponse := false.
						inPrimitiveResponse := true.
						extraOutLine := ''    PRIM_TABLE;'' ] ]
				ifFalse: [
				inPrimitiveResponse ifTrue: [
					inLine = ''	switch (primitiveIndex) {'' ifTrue: [
						extraOutLine := outLine.
						outLine := ''	PRIM_DISPATCH;'' ].
					inLine = ''	switch (GIV(primitiveIndex)) {'' ifTrue: [
						extraOutLine := outLine.
						outLine := ''	PRIM_DISPATCH;'' ].
					(inLine beginsWith: ''	case '') ifTrue: [
						caseLabel := (inLine findTokens: ''	 :'') second.
						outLine := ''	CASE('', caseLabel, '')'' ].
					inLine = ''}'' ifTrue: [
						inPrimitiveResponse := false ] ]
				] ] ] ].

				outFileStream nextPutAll: outLine; cr.
				extraOutLine ifNotNil: [
					outFileStream nextPutAll: extraOutLine; cr ]]].

	outFileStream close' )! !
