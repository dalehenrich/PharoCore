
!CompiledMethodTest methodsFor: 'tests - decompiling'!
testDecompile
	"self debug: #testDecompileTree"
	| method  cls stream |

	Smalltalk removeClassNamed: #TUTU.

	cls := Object subclass: #TUTU
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: 'KernelTests-Methods'.
	cls compile: 'foo ^ 10'.
	method := cls >> #foo.
	Smalltalk removeClassNamed: #TUTU.
	stream := ReadWriteStream on: String new.
	method decompile printOn: stream.
	self assert: stream contents = 'foo
	^ 10'
	
	
	! !
