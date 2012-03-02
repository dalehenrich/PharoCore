
!MessageListBrowser methodsFor: 'droplist'!
getPreferencesList

	^OrderedCollection new
		add: self sourceLabel;
		add: self byteCodeLabel;
		add: self diffLabel;
		add: self versionLabel;
		add: self infoLabel;
		yourself.
! !
