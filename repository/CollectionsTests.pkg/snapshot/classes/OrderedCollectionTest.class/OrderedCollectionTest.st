
CollectionRootTest subclass: #OrderedCollectionTest
	uses: TEmptySequenceableTest + TAddTest + TSequencedElementAccessTest + TIncludesWithIdentityCheckTest + TCloneTest + TSetArithmetic + TRemoveForMultiplenessTest + TCreationWithTest + TCopyTest + TPutBasicTest + TIterateSequencedReadableTest + TSubCollectionAccess + TIndexAccess + TCopySequenceableWithReplacement + TCopyPartOfSequenceable + TCopySequenceableSameContents + TCopySequenceableWithOrWithoutSpecificElements - {#testForceToPaddingWith. #testForceToPaddingStartWith} + TPrintOnSequencedTest + TAsStringCommaAndDelimiterSequenceableTest + TConvertTest + TConvertAsSetForMultiplinessIdentityTest + TSequencedConcatenationTest + TBeginsEndsWith + TReplacementSequencedTest + TIndexAccessForMultipliness + TCopyPartOfSequenceableForMultipliness + TConvertAsSortedTest + TPutTest + TSequencedStructuralEqualityTest + TOccurrencesForMultiplinessTest
	instanceVariableNames: 'empty nonEmpty collectResult emptyButAllocatedWith20 otherCollection indexCollection elementExistsTwice collectionWithElement collectionOfFloat elementNotIn indexArray withoutEqualElements floatCollectionWithSameBeginingEnd duplicateElement collectionWithDuplicateElement collection5Elements collectionWith4Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Sequenceable'!

!OrderedCollectionTest commentStamp: 'BG 1/10/2004 22:07' prior: 0!
These test cases demonstrate addition of items into an OrderedCollection as well as item removal.

Some of the assertions are quite complicated and use a lot of collection protocol. Such methods do not test one single method, but protocol in general.!
