
!FinderUI class methodsFor: 'accessing'!
searchedTextListMaxSize: anInteger

	self allInstancesDo: [:each | each searchedTextListMaxSize: anInteger].
	searchedTextListMaxSize := anInteger! !
