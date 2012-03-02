
Object subclass: #SUnitUnloader
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-Core-Utilities'!

!SUnitUnloader commentStamp: 'LaurentLaffont 4/15/2011 20:20' prior: 0!
I am SUnitUnloader, a little tool to unload SUnit and a fixed set of Tests from the current image.

Usage: SUnitUnloader new unloadAll

Caveat: #unloadTestPackages uses a fixed and probably ill maintained list of what packages hold unit tests.
!
