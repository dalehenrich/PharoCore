
TestCase subclass: #LinkedListTest
	uses: TAddTest - {#testTAddWithOccurences. #testTAddTwice. #testTWriteTwice} + TEmptyTest + TIterateTest + TIterateSequencedReadableTest + TPrintTest + TAsStringCommaAndDelimiterSequenceableTest + TIndexAccess + TSequencedElementAccessTest + TSubCollectionAccess + TConvertTest - {#testAsByteArray. #integerCollectionWithoutEqualElements} + TCopyPartOfSequenceable - {#testCopyEmptyMethod} + TCopySequenceableSameContents - {#testSortBy. #integerCollection} + TCopySequenceableWithOrWithoutSpecificElements + TCopyTest + TCopySequenceableWithReplacement - {#testCopyReplaceAllWithManyOccurence. #collectionWith2TimeSubcollection} + TBeginsEndsWith + TRemoveTest + TSetArithmetic + TIncludesWithIdentityCheckTest + TStructuralEqualityTest + TOccurrencesTest
	instanceVariableNames: 'nextLink n list link1 link2 link3 link4 nonEmpty otherList link collectionWithNil collectionWithoutNil nonEmpty1Element collectionWithoutEqualElements elementNotIn elementIn sameAtendAndBegining collection5Elements collectResult'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Sequenceable'!

!LinkedListTest commentStamp: 'mk 8/3/2005 11:55' prior: 0!
A set of test cases which thoroughly test functionality of the LinkedList class.!
