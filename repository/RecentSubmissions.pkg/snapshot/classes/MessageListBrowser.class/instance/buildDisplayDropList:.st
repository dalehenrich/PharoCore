
!MessageListBrowser methodsFor: 'items creation'!
buildDisplayDropList: aWindow

	^( self theme   
		newDropListIn: aWindow
		for:self				
		list: #getDisplayList
		getSelected: #sortingSelector
		setSelected: #sortingSelector:
		getEnabled: nil
		useIndex: false 
		help: self sortingSelectorHelpText) hResizing: #rigid; width: 150; yourself
! !
