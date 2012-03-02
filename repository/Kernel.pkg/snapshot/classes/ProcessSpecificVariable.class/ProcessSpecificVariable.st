
Object subclass: #ProcessSpecificVariable
	instanceVariableNames: 'index'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Processes'!

ProcessSpecificVariable class
	instanceVariableNames: 'hash soleInstance'!

!ProcessSpecificVariable commentStamp: 'mvl 3/13/2007 13:53' prior: 0!
My subclasses (not instances of them) keep state specific to the current process.

There are two kinds of process-specific variables: process-local (state available
for read and write in all methods inside the process), and dynamic variables
(implementing dynamic scope).!
