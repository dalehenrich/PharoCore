
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
versionSearchField
	^ SearchMorph new
		model: self;
		setIndexSelector: #versionSearchAccept:;
		searchList: self class versionSearchList;
		yourself! !
