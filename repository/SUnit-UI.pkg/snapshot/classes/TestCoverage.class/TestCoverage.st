
ProtoObject subclass: #TestCoverage
	instanceVariableNames: 'hasRun reference method'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SUnit-UI'!

!TestCoverage commentStamp: 'LaurentLaffont 4/15/2011 20:19' prior: 0!
I wrap a method in order to detect whether it has been called or not. Then I can be used to calculate test coverage for SUnit.!
