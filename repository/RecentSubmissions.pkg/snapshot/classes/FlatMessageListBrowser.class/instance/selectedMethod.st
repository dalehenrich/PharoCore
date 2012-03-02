
!FlatMessageListBrowser methodsFor: 'private'!
selectedMethod

	^ selectedItem ifNil: [nil] ifNotNil: [selectedItem method]! !
