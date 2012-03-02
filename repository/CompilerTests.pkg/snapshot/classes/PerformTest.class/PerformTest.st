
TestCase subclass: #PerformTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CompilerTests'!

!PerformTest commentStamp: 'HenrikSperreJohansen 5/19/2010 02:33' prior: 0!
I test a primitive failure with perform:withArguments: which was raised when selectors with many arguments was called from methods with small stack sizes.!
