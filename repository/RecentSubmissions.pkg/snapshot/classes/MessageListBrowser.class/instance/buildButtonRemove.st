
!MessageListBrowser methodsFor: 'items creation'!
buildButtonRemove
	
	^(PluggableButtonMorph 
		on: self 
		getState: #removeButtonState 
		action: #removeButtonAction 
		label: #removeButtonLabel)
		hResizing: #spaceFill! !
