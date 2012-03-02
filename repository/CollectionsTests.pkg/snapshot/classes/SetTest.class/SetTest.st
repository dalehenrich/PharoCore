
CollectionRootTest subclass: #SetTest
	uses: TAddForUniquenessTest + TIncludesWithIdentityCheckTest + TCloneTest + TCopyTest + TSetArithmetic + TRemoveTest + TCreationWithTest - {#testOfSize} + TGrowableTest + TStructuralEqualityTest + TSizeTest + TPrintTest + TAsStringCommaAndDelimiterTest + TConvertTest + TConvertAsSortedTest + TConcatenationEqualElementsRemovedTest + TOccurrencesTest
	instanceVariableNames: 'full empty collectResult emptyButAllocatedWith20 elementNotIn collectionOfFloat collectionIncluded nonEmpty1element withoutEqualElements collection5Elements collectionWith3Elements'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CollectionsTests-Unordered'!

!SetTest commentStamp: '<historical>' prior: 0!
This is the unit test for the class Set. Unit tests are a good way to exercise the functionality of your system in a repeatable and automatic manner. They are therefore recommended if you plan to release anything. For more information, see: 
	- http://www.c2.com/cgi/wiki?UnitTest
	- there is a chapter in the PharoByExample book (http://pharobyexample.org/)
	- the sunit class category!
