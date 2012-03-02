
Collection subclass: #WeakRegistry
	instanceVariableNames: 'list valueDictionary sema'
	classVariableNames: 'Default'
	poolDictionaries: ''
	category: 'Collections-Weak'!

!WeakRegistry commentStamp: 'Igor.Stasenko 3/8/2010 23:04' prior: 0!
This kind of WeakRegistry using a new VM feature,
which allows a more robust finalization support.

In contrast to old implementation, it doesn't spending linear time , checking what elements became garbage.!
