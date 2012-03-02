
!FlatMessageListBrowser methodsFor: 'accessing'!
selectedClassOrMetaClass

	^ selectedItem 
		ifNil: [ nil ]
		ifNotNil: [ selectedItem realClass ]! !
