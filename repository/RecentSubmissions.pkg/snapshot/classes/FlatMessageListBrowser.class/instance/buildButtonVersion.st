
!FlatMessageListBrowser methodsFor: 'items creation'!
buildButtonVersion
	
	^(PluggableButtonMorph 
		on: self 
		getState: #versionButtonState 
		action: #versionButtonAction 
		label: #versionButtonLabel)
		hResizing: #spaceFill! !
