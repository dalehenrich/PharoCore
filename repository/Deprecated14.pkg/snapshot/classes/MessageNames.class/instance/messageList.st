
!MessageNames methodsFor: 'selector list'!
messageList
	"Answer the receiver's message list, computing it if necessary. The way 
	to force a recomputation is to set the messageList to nil"
	messageList
		ifNil: [messageList := selectorListIndex = 0
						ifTrue: [#()]
						ifFalse: [self systemNavigation
								allImplementorsOf: (selectorList at: selectorListIndex)].
			self
				messageListIndex: (messageList size > 0
						ifTrue: [1]
						ifFalse: [0])].
	^ messageList! !
