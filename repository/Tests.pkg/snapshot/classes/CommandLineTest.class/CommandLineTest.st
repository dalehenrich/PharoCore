
TestCase subclass: #CommandLineTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tests-SystemSupport'!

!CommandLineTest commentStamp: 'AdrienBarreau 2/12/2011 15:55' prior: 0!
That class tests the API given by AbstractUserInput. Since that class is obviously abstract, it can't be instantiated, the tests are running on CommandLine (which inherits from AbstractUserInput)!
