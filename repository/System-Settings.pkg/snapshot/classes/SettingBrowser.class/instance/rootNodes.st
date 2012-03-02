
!SettingBrowser methodsFor: 'accessing'!
rootNodes
	^ roots ifNil: [roots := self treeHolder settingTreeRoots]
! !
