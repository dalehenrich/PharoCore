
!FinderUI methodsFor: 'buttons behavior'!
searchButtonAction
	
	forceSearch := true.
	self searchingTextArea contentMorph acceptTextInModel.! !
