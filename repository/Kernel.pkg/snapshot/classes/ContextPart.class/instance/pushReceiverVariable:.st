
!ContextPart methodsFor: 'instruction decoding'!
pushReceiverVariable: offset 
	"Simulate the action of bytecode that pushes the contents of the receiver's 
	instance variable whose index is the argument, index, on the top of the 
	stack."

	self push: (self receiver instVarAt: offset + 1)! !
