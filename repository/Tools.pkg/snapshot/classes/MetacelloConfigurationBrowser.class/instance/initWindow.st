
!MetacelloConfigurationBrowser methodsFor: 'initialize'!
initWindow
	"Create the window"
	
	| leftPanel tabs |
	window := StandardWindow new.
	window title: 'Browser on ', self repository.
	leftPanel := PanelMorph new changeTableLayout.		
	tabs := TabGroupMorph new hResizing: #spaceFill; vResizing: #spaceFill.				
	leftPanel addMorph: tabs.
	window 
		addMorph: leftPanel
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@0 corner: 0 @ 0)).		

	configTree := PluggableTreeMorph new.
	tabs addPage: configTree label: 'Configurations'.		
	configTree 
		model: self; 
		setSelectedSelector: #onConfigurationSelected:;
		getMenuSelector: #configurationMenu:.
		
	window 
		addMorph: configTree 
		fullFrame: (LayoutFrame fractions: (0@0 corner: 0@1) offsets: (0@0 corner: 0 @ 0)).		
	tabs selectedPageIndex: 1.									! !
