
Scanner subclass: #Parser
	instanceVariableNames: 'here hereType hereMark hereEnd prevMark prevEnd encoder requestor parseNode failBlock requestorOffset tempsMark doitFlag properties category'
	classVariableNames: 'AllowBlockArgumentAssignment Warns'
	poolDictionaries: ''
	category: 'Compiler-Kernel'!

!Parser commentStamp: '<historical>' prior: 0!
I parse Smalltalk syntax and create a MethodNode that is the root of the parse tree. I look one token ahead.!
