
HashedCollection subclass: #Dictionary
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Collections-Unordered'!

!Dictionary commentStamp: '<historical>' prior: 0!
I represent a set of elements that can be viewed from one of two perspectives: a set of associations, or a container of values that are externally named where the name can be any object that responds to =. The external name is referred to as the key.  I inherit many operations from Set.!
