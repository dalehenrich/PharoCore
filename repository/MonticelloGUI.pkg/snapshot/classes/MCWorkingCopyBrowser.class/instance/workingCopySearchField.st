
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
workingCopySearchField
	^ SearchMorph new
		model: self;
		setIndexSelector: #workingCopySearchAccept:; 
		searchList: self class workingCopySearchList;
		yourself
! !
