
Array weakSubclass: #WeakArray
	instanceVariableNames: ''
	classVariableNames: 'FinalizationDependents FinalizationLock FinalizationProcess FinalizationSemaphore'
	poolDictionaries: ''
	category: 'Collections-Weak'!

!WeakArray commentStamp: '<historical>' prior: 0!
WeakArray is an array which holds only weakly on its elements. This means whenever an object is only referenced by instances of WeakArray it will be garbage collected.!
