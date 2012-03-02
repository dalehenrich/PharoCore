
TestResource subclass: #CommandLineResource
	instanceVariableNames: 'realParams realRegistrations'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-SystemSupport'!

!CommandLineResource commentStamp: 'AdrienBarreau 2/12/2011 15:52' prior: 0!
This class saves the real parameters the user gave when he started this image and replace them with CommandLineResource>>testParameters.
Of course, the real parameters are restored when the test running is over.

This TestResource class is used by CommandLineTest.!
