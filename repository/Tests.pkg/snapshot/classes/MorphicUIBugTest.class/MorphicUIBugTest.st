
TestCase subclass: #MorphicUIBugTest
	instanceVariableNames: 'cases'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-Bugs'!

!MorphicUIBugTest commentStamp: 'wiz 1/3/2007 13:57' prior: 0!
A MorphicUIBugTest is a class for testing the shortcomings and repairs of the MorphicUI manager.
.

Instance Variables
	cases:		<aCollection>

cases
	- a list of morphs that may need to be deleted during teardown.
	the tests are expected to fill this list it starts out empty by default.
	
	
!
