
TestCase subclass: #ChangeSetClassChangesTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-Bugs'!

!ChangeSetClassChangesTest commentStamp: 'dtl 2/19/2005 13:21' prior: 0!
Class category changes are not being properly added to the default changeset in Squeak 3.7. This test case will pass in Squeak 3.6, and fail in Squeak 3.[7-9].
!
