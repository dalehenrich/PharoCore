
!MessageListBrowser methodsFor: 'items creation'!
buildButtonClear
	
	^(PluggableButtonMorph 
		on: self 
		getState: #clearButtonState 
		action: #clearButtonAction 
		label: #clearButtonLabel)
		hResizing: #spaceFill! !
