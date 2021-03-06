
BytecodeEncoder subclass: #EncoderForV3
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Kernel'!

!EncoderForV3 commentStamp: '<historical>' prior: 0!
I add behaviour to Encoder to size and emit bytecodes for the Squeak V3.x VM bytecode set.  The intention is for another subclass to restrict the range of bytecodes used to long forms only, allowing the bytecode set to be redefined by avoiding using the many short forms.  The short forms may then be reassigned.!
