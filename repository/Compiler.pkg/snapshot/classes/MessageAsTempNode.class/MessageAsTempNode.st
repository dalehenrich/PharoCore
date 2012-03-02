
MessageNode subclass: #MessageAsTempNode
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-ParseNodes'!

!MessageAsTempNode commentStamp: '<historical>' prior: 0!
This node represents accesses to temporary variables for do-its in the debugger.  Since they execute in another context, they must send a message to the original context to access the value of the temporary variable in that context.!
