
!SettingBrowser methodsFor: 'updating'!
updateList
	self isRendered ifTrue: [
		self treeHolder updateList.
		self changed: #rootNodes.
		self changed: #getDescription.
		self changed: #getViewedPackageNames].	
! !
