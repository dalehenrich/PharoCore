
ProcessSpecificVariable subclass: #DynamicVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Processes'!

!DynamicVariable commentStamp: 'mvl 3/13/2007 13:55' prior: 0!
My subclasses are dynamic variables: each subclass represents a variable
whose value persists inside the block passed to #value:during:. There is
no way to change the value inside such a block, but it is possible to
temporarirly rebind it in a nested manner.!
