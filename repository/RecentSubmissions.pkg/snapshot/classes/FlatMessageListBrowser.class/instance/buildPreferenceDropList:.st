
!FlatMessageListBrowser methodsFor: 'items creation'!
buildPreferenceDropList: aWindow

	^( UIManager default theme 
		newDropListIn: aWindow
		for:self				
		list: #getPreferencesList
		getSelected: #preference
		setSelected: #preference:
		getEnabled: nil
		useIndex: false 
		help: self preferenceHelpText) hResizing: #rigid; width: 150; yourself! !
