
MethodNode subclass: #BytecodeAgnosticMethodNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!BytecodeAgnosticMethodNode commentStamp: '<historical>' prior: 0!
I am a version of MethodNode that is able to work with different BytecodeEncoders, and is hence able to generate methods using different bytecode sets.!
