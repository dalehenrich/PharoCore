
Object subclass: #FSResolver
	instanceVariableNames: 'next'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FS-Core-Implementation'!

!FSResolver commentStamp: 'cwp 3/29/2011 17:04' prior: 0!
I am an abstract superclass for objects that can resolve origins into references. Such objects use the Chain of Responsibility pattern, and when unable to resolve a particular origin, delegate that resolution request to the next resolver in the list.

next
	The next resolver in the list, or nil
!
