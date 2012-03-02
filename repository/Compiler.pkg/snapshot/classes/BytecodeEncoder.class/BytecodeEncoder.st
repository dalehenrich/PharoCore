
Encoder subclass: #BytecodeEncoder
	instanceVariableNames: 'stream position rootNode blockExtentsToLocals'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Kernel'!

!BytecodeEncoder commentStamp: '<historical>' prior: 0!
I am an abstract superclass for different bytecode set encoders.  Subclasses inherit the literal management of Encoder and encapsulate the mapping of opcodes to specific bytecodes.!
