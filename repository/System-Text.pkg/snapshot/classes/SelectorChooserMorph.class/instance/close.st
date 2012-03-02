
!SelectorChooserMorph methodsFor: 'action'!
close
	requestor 
		ifNotNil: [requestor takeKeyboardFocus.
			self choose: 0]! !
