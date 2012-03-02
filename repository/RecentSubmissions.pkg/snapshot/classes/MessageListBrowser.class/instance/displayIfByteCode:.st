
!MessageListBrowser methodsFor: 'text'!
displayIfByteCode: aMessageListInspectableNode

	 | method |
	method := self getMethod: aMessageListInspectableNode ifAbsent: [nil].
	method ifNotNil: [ :each | ^each method symbolic ].
	^self unvailableByteCodeLabel! !
