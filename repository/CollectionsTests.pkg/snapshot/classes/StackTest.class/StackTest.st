
TestCase subclass: #StackTest
	uses: TEmptyTest - {#testIfNotEmptyifEmpty. #testIfEmpty. #testNotEmpty} + TCloneTest - {#testCopyNonEmpty}
	instanceVariableNames: 'empty nonEmpty'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Stack'!

StackTest class
	instanceVariableNames: 'testSize'!