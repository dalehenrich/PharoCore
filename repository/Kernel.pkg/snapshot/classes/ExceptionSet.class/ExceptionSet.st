
Object subclass: #ExceptionSet
	instanceVariableNames: 'exceptions'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Kernel-Exceptions'!

!ExceptionSet commentStamp: '<historical>' prior: 0!
An ExceptionSet is a grouping of exception handlers which acts as a single handler.  Within the group, the most recently added handler will be the last handler found during a handler search (in the case where more than one handler in the group is capable of handling a given exception). !
