
!FlatMessageListBrowser methodsFor: 'items creation'!
buildButtonImplementors
	
	^(PluggableButtonMorph 
		on: self 
		getState: #implementorButtonState 
		action: #implementorButtonAction 
		label: #implementorButtonLabel)
		hResizing: #spaceFill! !
