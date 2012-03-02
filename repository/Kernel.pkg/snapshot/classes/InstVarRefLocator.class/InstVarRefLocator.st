
InstructionClient subclass: #InstVarRefLocator
	instanceVariableNames: 'bingo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!InstVarRefLocator commentStamp: 'md 4/8/2003 12:50' prior: 0!
My job is to scan bytecodes for instance variable references.

BlockContext allInstances collect: [ :x |
	{x. x hasInstVarRef}
].!
