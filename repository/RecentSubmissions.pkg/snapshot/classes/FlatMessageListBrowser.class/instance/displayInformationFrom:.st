
!FlatMessageListBrowser methodsFor: 'text'!
displayInformationFrom: aMethodReference

	self preference = self sourceLabel
		ifTrue: [^ self displayIfSource: aMethodReference].
	self preference = self byteCodeLabel
		ifTrue: [^ self displayIfByteCode: aMethodReference].
	self preference = self infoLabel
		ifTrue: [	^ self displayIfInfo: aMethodReference].
	self preference = self diffLabel 
		ifTrue: [^ self displayIfDiff: aMethodReference].
	^ self error: 'Error in the drop list'! !
