
!MessageListBrowser methodsFor: 'accessing'!
model: aModel

	model := aModel.
	model
		when: #changed
		send: #updateView
		to: self.
! !
