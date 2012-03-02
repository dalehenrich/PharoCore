
SmallDictionary subclass: #SmallIdentityDictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Unordered'!

!SmallIdentityDictionary commentStamp: 'sd 7/21/2009 10:12' prior: 0!
I'm a SmallDictionary (this means faster than default one when dealing with limited number of items)
but I check my key based on identity.!
