
!SHTextStylerST80 class methodsFor: 'style table'!
styleTable
	^ styleTable
		ifNil: [styleTable := self defaultStyleTable]! !
