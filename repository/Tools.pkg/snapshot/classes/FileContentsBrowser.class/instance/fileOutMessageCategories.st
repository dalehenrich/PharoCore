
!FileContentsBrowser methodsFor: 'filein/fileout'!
fileOutMessageCategories
	Cursor write showWhile:[
		self selectedClassOrMetaClass fileOutCategory: self selectedMessageCategoryName.
	].! !
