
Object subclass: #VirtualMachine
	instanceVariableNames: ''
	classVariableNames: 'LastStats WordSize'
	poolDictionaries: ''
	category: 'System-Support'!

!VirtualMachine commentStamp: 'IgorStasenko 8/16/2011 17:41' prior: 0!
I am exposing a various attributes of smalltalk virtual machine.


The direct use of this class is not recommended. 

All attributes are normally should be accessed via

Smalltalk vm someAttribute

instead of 

VirtualMachine someAttribute

!
