
Set subclass: #WeakSet
	instanceVariableNames: 'flag'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Weak'!

!WeakSet commentStamp: 'IgorStasenko 3/22/2011 16:25' prior: 0!
I'm a Set with weak elements. 

Implementation.

	flag is a special object that indicates that at a given slot the set has a free entry.!
