
!SettingBrowser methodsFor: 'menu'!
doubleClick
	self selectedNode ifNotNil: [:node | node browseDeclaration]! !
