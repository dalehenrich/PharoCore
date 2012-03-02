
!FlatMessageListBrowser methodsFor: 'items creation'!
buildButtonSenders
	
	^(PluggableButtonMorph 
		on: self 
		getState: #sendersButtonState 
		action: #sendersButtonAction 
		label: #sendersButtonLabel)
		hResizing: #spaceFill! !
