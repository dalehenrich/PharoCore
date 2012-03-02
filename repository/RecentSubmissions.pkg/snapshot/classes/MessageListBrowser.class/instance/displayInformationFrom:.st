
!MessageListBrowser methodsFor: 'text'!
displayInformationFrom: aMessageListInspectableNode

	self preference = self sourceLabel
		ifTrue: [^ self displayIfSource: aMessageListInspectableNode].
	self preference = self byteCodeLabel
		ifTrue: [^ self displayIfByteCode: aMessageListInspectableNode].
	self preference = self infoLabel
		ifTrue: [	^ self displayIfInfo: aMessageListInspectableNode].
	self preference = self versionLabel
		ifTrue:[ ^self displayIfVersion: aMessageListInspectableNode].
	self preference = self diffLabel 
		ifTrue: [^ self displayIfDiff: aMessageListInspectableNode].
	^ self error: 'Error in the drop list'! !
