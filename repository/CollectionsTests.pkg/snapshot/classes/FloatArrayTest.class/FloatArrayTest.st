
CollectionRootTest subclass: #FloatArrayTest
	uses: TCreationWithTest + TSequencedStructuralEqualityTest + TSequencedConcatenationTest + TSetArithmetic + TAsStringCommaAndDelimiterSequenceableTest + TPrintOnSequencedTest + TEmptyTest + TBeginsEndsWith + TCloneTest + TConvertTest - {#testAsByteArray. #integerCollectionWithoutEqualElements} + TConvertAsSortedTest + TConvertAsSetForMultiplinessIdentityTest - {#testAsIdentitySetWithEqualsElements. #testAsIdentitySetWithIdentityEqualsElements} + TCopyPartOfSequenceable + TCopyPartOfSequenceableForMultipliness + TCopySequenceableSameContents + TCopySequenceableWithOrWithoutSpecificElements + TCopySequenceableWithReplacement + TCopyTest + TIncludesWithIdentityCheckTest - {#testIdentityIncludesNonSpecificComportement} + TIndexAccess - {#testIdentityIndexOf. #testIdentityIndexOfIAbsent} + TIndexAccessForMultipliness - {#testIdentityIndexOfIAbsentDuplicate. #testIdentityIndexOfDuplicate} + TIterateSequencedReadableTest + TPutTest + TPutBasicTest + TReplacementSequencedTest + TSequencedElementAccessTest + TSortTest + TSubCollectionAccess
	instanceVariableNames: 'nonEmpty5ElementsNoDuplicate empty elementNotIn elementTwiceIn collectionWithEqualElements nonEmpty1Element collectionWithSameAtEndAndBegining collectionWith1TimeSubcollection collectionWith2TimeSubcollection collectionNotIncluded nonEmptySubcollection elementInNonEmpty replacementCollectionSameSize sortedCollection'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Arrayed'!

!FloatArrayTest commentStamp: 'nice 5/30/2006 01:24' prior: 0!
These tests are used to assert that FloatArrayPlugin has same results as Float asIEEE32BitWord!
