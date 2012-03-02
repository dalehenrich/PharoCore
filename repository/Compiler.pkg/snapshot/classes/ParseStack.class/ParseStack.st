
Object subclass: #ParseStack
	instanceVariableNames: 'position length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compiler-Support'!

!ParseStack commentStamp: '<historical>' prior: 0!
I keep track of the current and high position of the stack that will be needed by code being compiled.!
