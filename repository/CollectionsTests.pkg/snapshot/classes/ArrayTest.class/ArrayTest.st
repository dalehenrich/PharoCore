
CollectionRootTest subclass: #ArrayTest
	uses: TEmptySequenceableTest + TSequencedElementAccessTest + TCloneTest + TIncludesWithIdentityCheckTest + TCopyTest + TSetArithmetic + TCreationWithTest + TPutBasicTest + TConvertTest - {} + TOccurrencesForMultiplinessTest + TIterateSequencedReadableTest + TSequencedConcatenationTest + TReplacementSequencedTest + TAsStringCommaAndDelimiterSequenceableTest + TBeginsEndsWith + TPrintOnSequencedTest + TIndexAccess + TSubCollectionAccess + TConvertAsSetForMultiplinessIdentityTest + TCopyPartOfSequenceable + TCopySequenceableSameContents + TCopySequenceableWithOrWithoutSpecificElements + TCopySequenceableWithReplacement + TIndexAccessForMultipliness + TCopyPartOfSequenceableForMultipliness + TConvertAsSortedTest + TPutTest + TSequencedStructuralEqualityTest + TSortTest
	instanceVariableNames: 'example1 literalArray selfEvaluatingArray otherArray nonSEArray1 nonSEarray2 example2 empty collectResult withoutEqualElements withEqualElements withCharacters unsortedCollection sortedInAscendingOrderCollection sizeCollection collectionNotIncluded removedCollection elementInForCopy elementNotInForCopy firstIndex secondIndex replacementCollection indexArray valueArray nonEmptyMoreThan1Element subCollectionNotIn replacementCollectionSameSize oldSubCollection nonEmpty1Element collectionOfCollection collectionOfFloatWithEqualElements floatCollectionWithSameBeginingAnEnd collectionWithoutNil duplicateElement collection5Elements collectionWith4Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Arrayed'!

!ArrayTest commentStamp: '<historical>' prior: 0!
This is the unit test for the class Array. Unit tests are a good way to exercise the functionality of your system in a repeatable and automatic manner. They are therefore recommended if you plan to release anything. For more information, see: 
	- http://www.c2.com/cgi/wiki?UnitTest
	- there is a chapter in the PharoByExample book (http://pharobyexample.org/)	
	- the sunit class category!
