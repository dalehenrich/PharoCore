
!MessageListBrowser methodsFor: 'text'!
updateTextArea

	self textArea ifNil: [^self].
	(self selectedNode isNil)
		ifTrue:  [self textArea visible: false]
		ifFalse: [
			(self selectedNode isInspectable)
				ifTrue: [self textArea visible: true]
				ifFalse: [self textArea hide]]! !
