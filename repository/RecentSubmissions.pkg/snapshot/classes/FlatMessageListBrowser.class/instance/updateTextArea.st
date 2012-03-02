
!FlatMessageListBrowser methodsFor: 'text'!
updateTextArea

	self textArea ifNil: [ ^ self ].
	(self selectedItemIndex isNil)
		ifTrue:  [ self textArea visible: false ]
		ifFalse: [  self textArea visible: true ]! !
