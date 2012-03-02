
Object subclass: #MessageSend
	instanceVariableNames: 'receiver selector arguments'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Objects'!

!MessageSend commentStamp: 'DF 5/25/2006 19:54' prior: 0!
Instances of MessageSend encapsulate message sends to objects. Arguments can be either predefined or supplied when the message send is performed. 

Use #value to perform a message send with its predefined arguments and #valueWithArguments: if additonal arguments have to supplied.

Structure:
 receiver		Object -- object receiving the message send
 selector		Symbol -- message selector
 arguments		Array -- bound arguments!
