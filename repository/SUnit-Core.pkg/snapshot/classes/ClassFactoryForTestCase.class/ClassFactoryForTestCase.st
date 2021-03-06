
Object subclass: #ClassFactoryForTestCase
	instanceVariableNames: 'createdClasses'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-Core-Extensions'!

!ClassFactoryForTestCase commentStamp: 'LaurentLaffont 4/15/2011 20:20' prior: 0!
I'm useful when classes needs to be created during the execution of the test. This avoid polluting your unit tests with dummy and mock classes.
A typical usage of it is:

TestCase subclass: #YourTest
       instanceVariableNames: 'classFactory'

YourTest>>setUp
       classFactory := ClassFactoryForTestCase new

YourTest>>tearDown
       classFactory deleteClasses.

YourTest>>testIsBehavior
       | cls |
       cls := classFactory newClass.
       self assert: cls isBehavior
!
