
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
packageSearchField
	^ SearchMorph new
		model: self;
		setIndexSelector: #packageSearchAccept:;
		searchList: self class packageSearchList;
		yourself! !
