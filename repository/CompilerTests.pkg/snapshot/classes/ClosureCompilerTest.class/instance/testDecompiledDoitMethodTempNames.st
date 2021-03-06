
!ClosureCompilerTest methodsFor: 'tests'!
testDecompiledDoitMethodTempNames
	"self new testDecompiledDoitMethodTempNames"
	"Test that a decompiled doit that has been copied with temps decompiles to the input"
	| removeComments |
	removeComments := [:n| n comment: nil].
	self closureCases do:
		[:source| | mns m mps mnps |
		"Need to compare an ungenerated tree with the generated method's methodNode
		 because generating code alters the tree when it introduces remote temp vectors."
		mns := #(first last) collect:
					[:ignored|
					source first isLetter
						ifTrue:
							[self class compilerClass new
								compile: source
								in: self class
								notifying: nil
								ifFail: [self error: 'compilation error']]
						ifFalse:
							[self class compilerClass new
								compileNoPattern: source
								in: self class
								context: nil
								notifying: nil
								ifFail: [self error: 'compilation error']]].
		m := (mns last generateWithTempNames).
		removeComments value: mns first.
		mns first nodesDo: removeComments.
		self assert: (mnps := mns first printString) = (mps := m methodNode printString)]! !
