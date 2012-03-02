
Object subclass: #LRUCache
	instanceVariableNames: 'size factory calls hits values'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'System-Support'!

!LRUCache commentStamp: '<historical>' prior: 0!
I'm a cache of values, given a key I return a Value from the cache or from the factory!
