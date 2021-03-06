
CollectionRootTest subclass: #SortedCollectionTest
	uses: TEmptyTest + TIterateSequencedReadableTest + TPrintOnSequencedTest + TAsStringCommaAndDelimiterSequenceableTest + TIncludesWithIdentityCheckTest + TSequencedElementAccessTest - {#testAtAll} + TSubCollectionAccess + TIndexAccessForMultipliness + TRemoveTest + TConvertTest + TConvertAsSetForMultiplinessIdentityTest + TAddTest + TBeginsEndsWith + TCopySequenceableSameContents - {#testShuffled} + TSetArithmetic + TRemoveByIndexTest + TCopyPartOfSequenceable + TCopyPartOfSequenceableForMultipliness + TCopySequenceableWithOrWithoutSpecificElements - {#testForceToPaddingStartWith. #testForceToPaddingWith. #testCopyWithFirst. #testCopyWithoutIndex} + TCopySequenceableWithReplacementForSorted + TCopyTest + TConvertAsSortedTest + TSequencedStructuralEqualityTest + TCreationWithTest + TOccurrencesForMultiplinessTest
	instanceVariableNames: 'nonEmpty elementExistsTwice empty collectResult nonEmpty1Element collectionOfFloat accessCollection elementNoteIn oldSubcollection floatCollectionSameEndAndBegining withoutEqualElements collectionOfFloatWithDuplicate collectionIncluded collectionNotIncluded collectionWithoutNil duplicateFloat nonEmpty5Elements collectionWith4Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Unordered'!
