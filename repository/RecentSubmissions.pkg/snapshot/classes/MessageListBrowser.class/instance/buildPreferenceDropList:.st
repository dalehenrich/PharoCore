
!MessageListBrowser methodsFor: 'items creation'!
buildPreferenceDropList: aWindow

	^( self theme  
		newDropListIn: aWindow
		for:self				
		list: #getPreferencesList
		getSelected: #preference
		setSelected: #preference:
		getEnabled: nil
		useIndex: false 
		help: self preferenceHelpText) hResizing: #rigid; width: 150; yourself! !
