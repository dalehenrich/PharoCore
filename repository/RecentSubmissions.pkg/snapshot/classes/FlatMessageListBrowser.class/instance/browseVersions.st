
!FlatMessageListBrowser methodsFor: 'private'!
browseVersions

	selectedItem ifNil: [ ^false ].
	selectedItem isMethod
		ifTrue: [ self browseVersionsFrom: self selectedMethod ]
		ifFalse:[ self browseCommentVersionsOf: self selectedMethod ]! !
