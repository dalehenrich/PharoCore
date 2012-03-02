
InstructionClient subclass: #BlockLocalTempCounter
	instanceVariableNames: 'stackPointer scanner blockEnd joinOffsets'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Support'!

!BlockLocalTempCounter commentStamp: '<historical>' prior: 0!
I am a support class for the decompiler that is used to find the number of local temps in a block by finding out what the stack offset is at the end of a block.!
