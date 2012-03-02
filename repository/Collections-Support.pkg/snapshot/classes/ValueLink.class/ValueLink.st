
Link subclass: #ValueLink
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Support'!

!ValueLink commentStamp: 'HenrikSperreJohansen 10/18/2009 15:57' prior: 0!
A ValueLink is a Link containing a Value.
Adding an object to a LinkedList which is not a Link will create a ValueLink containing that object.


value - The object this link points to.!
