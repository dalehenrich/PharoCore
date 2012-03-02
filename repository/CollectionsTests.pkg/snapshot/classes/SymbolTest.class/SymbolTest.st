
CollectionRootTest subclass: #SymbolTest
	uses: TIncludesTest + TCloneTest - {#testCopyCreatesNewObject} + TCopyPreservingIdentityTest + TCopyTest + TSetArithmetic - {#testDifferenceWithNonNullIntersection} + TIterateSequencedReadableTest + TSequencedConcatenationTest + TPrintOnSequencedTest + TAsStringCommaAndDelimiterSequenceableTest + TIndexAccess + TIndexAccessForMultipliness - {#testIdentityIndexOfIAbsentDuplicate. #testIdentityIndexOfDuplicate. #collectionWithNonIdentitySameAtEndAndBegining} + TSequencedElementAccessTest + TSubCollectionAccess + TCopySequenceableSameContents - {#testShuffled} + TCopyPartOfSequenceable - {#testCopyEmptyMethod. #integerCollectionWithoutEqualElements} + TCopyPartOfSequenceableForMultipliness + TCopySequenceableWithReplacement + TBeginsEndsWith + TConvertAsSortedTest + TConvertTest - {#testAsByteArray} + TCopySequenceableWithOrWithoutSpecificElements + TConvertAsSetForMultiplinessTest + TSequencedStructuralEqualityTest + TOccurrencesForMultiplinessTest
	instanceVariableNames: 'emptySymbol nonEmptySymbol5ElementsNoDuplicates notIn collectionNotIncluded collectionSize4 collection1Element sameAtEndAndBegining with2timeSubcollection subcollection3ElementsSorted'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Strings'!

!SymbolTest commentStamp: '<historical>' prior: 0!
This is the unit test for the class Symbol. Unit tests are a good way to exercise the functionality of your system in a repeatable and automatic manner. They are therefore recommended if you plan to release anything. For more information, see: 
	- http://www.c2.com/cgi/wiki?UnitTest
	- there is a chapter in the PharoByExample book (http://pharobyexample.org/)
	- the sunit class category!
