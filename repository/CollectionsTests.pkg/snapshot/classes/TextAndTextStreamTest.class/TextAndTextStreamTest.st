
TestCase subclass: #TextAndTextStreamTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Text'!

!TextAndTextStreamTest commentStamp: '<historical>' prior: 0!
At May 09, 2003 Tim Olson sent a bug report to the Squeak developers list that inspired me to examine the protocol of TextStream in greater detail.  (The bug that Tim reported was present in Squeak 3.4, it is shown in testExample1.) In a discussion that followed,  Daniel Vainsencher proposed that we should have tests for Text and TextStreams. This class is an attempt to implement that proposal. For Squeak 3.4, some of the test examples fail.!
