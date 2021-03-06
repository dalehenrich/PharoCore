
!SystemNavigationTest methodsFor: 'testing'!
testRetrievingAllMethodsInCategory
	"self run: #testRetrievingAllMethodsInCategory"
	| class catName retrievedMethods |
	catName := 'reallyBadChosenCategoryNameThatWillNeverExists'.
	class := self classFactory newClass.
	class compileSilently: 'meth self m'.
	class organization addCategory: catName before: nil.
	class organization
		classify: #meth
		under: catName
		suppressIfDefault: true.
	self assert: (class organization categoryOfElement: #meth)
			= catName.
	retrievedMethods := self systemNavigationToTest allMethodsInCategory: catName.
	self assert: retrievedMethods size = 1.
	self assert: retrievedMethods anyOne selector = #meth! !
