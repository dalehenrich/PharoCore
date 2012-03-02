
CollectionRootTest subclass: #StringTest
	uses: TIncludesTest + TCloneTest + TCopyTest + TSetArithmetic + TIterateSequencedReadableTest + TPrintOnSequencedTest + TAsStringCommaAndDelimiterSequenceableTest + TIndexAccess + TSequencedElementAccessTest + TSubCollectionAccess + TPutBasicTest + TCopySequenceableSameContents + TCopyPartOfSequenceable + TCopyPartOfSequenceableForMultipliness + TCopySequenceableWithOrWithoutSpecificElements + TCopySequenceableWithReplacement + TReplacementSequencedTest + TConvertTest - {#testAsByteArray} + TConvertAsSortedTest + TBeginsEndsWith + TIndexAccessForMultipliness - {#testIdentityIndexOfIAbsentDuplicate. #testIdentityIndexOfDuplicate. #collectionWithNonIdentitySameAtEndAndBegining} + TSequencedConcatenationTest + TPutTest + TConvertAsSetForMultiplinessTest + TSortTest + TSequencedStructuralEqualityTest + TOccurrencesForMultiplinessTest + TCreationWithTest
	instanceVariableNames: 'string emptyString elementInNonEmpty notIn nonEmpty1element withoutEqualElements collectionNotIncluded indexInNonEmptyArray sameAtEndAndBegining nonEmpty5ElementsSorted unsortedCollection subcollection3ElementsSorted arrayWithCharacters'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Strings'!

!StringTest commentStamp: '<historical>' prior: 0!
This is the unit test for the class String. Unit tests are a good way to exercise the functionality of your system in a repeatable and automatic manner. They are therefore recommended if you plan to release anything. For more information, see: 
	- http://www.c2.com/cgi/wiki?UnitTest
	- there is a chapter in the PharoByExample book (http://pharobyexample.org/)
	- the sunit class category!
