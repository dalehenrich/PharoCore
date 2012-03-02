
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
repositorySearchField
	^ SearchMorph new
		model: self;
		setIndexSelector: #repositorySearchAccept:; 
		searchList: self class repositorySearchList;
		yourself! !
