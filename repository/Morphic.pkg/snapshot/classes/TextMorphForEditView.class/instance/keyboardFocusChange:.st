
!TextMorphForEditView methodsFor: 'changed'!
keyboardFocusChange: aBoolean 
	
 	paragraph 
		ifNotNil: [paragraph focused: aBoolean].
 	aBoolean 
 		ifTrue: ["A hand is wanting to send us characters..."
 			self hasFocus 
				ifFalse: [self editor "Forces editor install"].
			self editor focused: true.
			self showOverEditableTextCursor.
			self useFindReplaceSelection
				ifTrue: [self selectionChanged].
 			Editor blinkingCursor 
				ifTrue: [self startBlinking]] 
		ifFalse:[editor ifNotNil: [editor focused: false].
			self hideOverEditableTextCursor.
			self
				resetBlinkCursor;
				stopBlinking].				
 	self editView
		ifNil: [self focusChanged]
		ifNotNil: [self editView focusChanged].
	self acceptOnFocusChange == true
		ifTrue: [self editView hasUnacceptedEdits ifTrue: [self editor accept]]! !
