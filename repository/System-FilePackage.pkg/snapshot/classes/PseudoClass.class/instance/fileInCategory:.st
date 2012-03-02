
!PseudoClass methodsFor: 'filein/fileout'!
fileInCategory: aCategory
	^self fileInMethods: (self organization listAtCategoryNamed: aCategory)! !
