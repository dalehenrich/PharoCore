
!MessageListBrowser methodsFor: 'droplist'!
getDisplayList

	^OrderedCollection new
		add: self byClassLabel;
		add: self byVersionLabel;
		add: self byDateAscendingLabel;
		add: self byDateDescendingLabel;
		add: self byPackageLabel;
		yourself.
! !
