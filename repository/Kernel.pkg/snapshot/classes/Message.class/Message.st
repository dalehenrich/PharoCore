
Object subclass: #Message
	instanceVariableNames: 'selector args lookupClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Methods'!

!Message commentStamp: '<historical>' prior: 0!
I represent a selector and its argument values.
	
Generally, the system does not use instances of Message for efficiency reasons. However, when a message is not understood by its receiver, the interpreter will make up an instance of me in order to capture the information involved in an actual message transmission. This instance is sent it as an argument with the message doesNotUnderstand: to the receiver.!
