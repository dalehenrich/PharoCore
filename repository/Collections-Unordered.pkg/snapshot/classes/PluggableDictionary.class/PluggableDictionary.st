
Dictionary subclass: #PluggableDictionary
	instanceVariableNames: 'hashBlock equalBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Unordered'!

!PluggableDictionary commentStamp: '<historical>' prior: 0!
Class PluggableDictionary allows the redefinition of hashing and equality by clients. This is in particular useful if the clients know about specific properties of the objects stored in the dictionary. See the class comment of PluggableSet for an example.

Instance variables:
	hashBlock	<BlockContext>	A one argument block used for hashing the elements.
	equalBlock	<BlockContext>	A two argument block used for comparing the elements.
!
