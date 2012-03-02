
!MessageListBrowser methodsFor: 'initialization'!
initialize
	super initialize.
	self preference: self getPreferencesList first.
	self sortingSelector: #originalIndex
! !
