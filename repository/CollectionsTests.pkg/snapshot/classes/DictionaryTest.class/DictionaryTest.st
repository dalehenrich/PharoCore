
CollectionRootTest subclass: #DictionaryTest
	uses: TIncludesTest + TDictionaryAddingTest + TDictionaryComparingTest + TDictionaryCopyingTest + TDictionaryEnumeratingTest + TDictionaryPrintingTest - {#testPrintElementsOn. #testStoreOn} + TDictionaryRemovingTest + TPutBasicTest - {#testAtPutOutOfBounds} + TAsStringCommaAndDelimiterTest + TPrintTest + TConvertTest + TConvertAsSortedTest + TCopyTest - {#testCopyEmptyWithout. #testCopyNonEmptyWithout. #testCopyNonEmptyWithoutNotIncluded} + TSetArithmetic + TDictionaryIncludesWithIdentityCheckTest + TDictionaryValueAccessTest + TDictionaryKeysValuesAssociationsAccess + TDictionaryKeyAccessTest + TDictionaryAssociationAccessTest + TStructuralEqualityTest + TOccurrencesForMultiplinessTest
	instanceVariableNames: 'emptyDict nonEmptyDict nonEmpty5ElementsNoDuplicates indexArray valueArray nonEmpty1Element collectionNotIncluded collectionIncluded associationNotIn valueNotIn keyNotIn dictionaryNotIncluded nonEmptyWithFloat dictionaryWithDuplicateValues duplicateValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Unordered'!

DictionaryTest class
	uses: TIncludesTest classTrait + TDictionaryAddingTest classTrait + TDictionaryComparingTest classTrait + TDictionaryCopyingTest classTrait + TDictionaryEnumeratingTest classTrait + TDictionaryPrintingTest classTrait + TDictionaryRemovingTest classTrait + TPutBasicTest classTrait + TAsStringCommaAndDelimiterTest classTrait + TPrintTest classTrait + TConvertTest classTrait + TConvertAsSortedTest classTrait + TCopyTest classTrait + TSetArithmetic classTrait + TDictionaryValueAccessTest classTrait + TDictionaryKeysValuesAssociationsAccess classTrait + TDictionaryKeyAccessTest classTrait + TDictionaryAssociationAccessTest classTrait + TDictionaryIncludesWithIdentityCheckTest classTrait + TStructuralEqualityTest classTrait + TOccurrencesForMultiplinessTest classTrait
	instanceVariableNames: 'testToto pt1'!
