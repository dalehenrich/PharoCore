
TestCase subclass: #ClassTestCase
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-Core-Utilities'!

!ClassTestCase commentStamp: 'brp 7/26/2003 16:57' prior: 0!
This class is intended for unit tests of individual classes and their metaclasses.

It provides methods to determine the coverage of the unit tests.

Subclasses are expected to re-implement #classesToBeTested and #selectorsToBeIgnored.

They should also implement to confirm that all methods have been tested.

#testCoverage

	super testCoverage.

!
