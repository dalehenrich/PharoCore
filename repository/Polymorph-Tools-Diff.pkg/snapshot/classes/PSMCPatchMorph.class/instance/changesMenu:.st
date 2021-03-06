
!PSMCPatchMorph methodsFor: 'as yet unclassified'!
changesMenu: m
	"Answer the changes menu."

	|menu|
	menu := self newMenu
		addTitle: 'Changes'
		icon: self theme smallCopyIcon.		
	menu
		addToggle: 'Browse class...' translated
		target: self
		selector: #browseClass
		getStateSelector: nil
		enablementSelector: #selectionHasAcutalClass.
	menu lastItem
	 	font: self theme menuFont;
		icon: Smalltalk tools browser taskbarIcon;
		keyText: 'Cmd+b'.
	menu addLine.
	menu
		addToggle: 'Versions...' translated
		target: self
		selector: #browseVersions
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: self theme smallJustifiedIcon;
		keyText: 'Cmd+v'.	
	menu
		addToggle: 'Senders...' translated
		target: self
		selector: #browseSenders
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: self theme smallForwardIcon;
		keyText: 'Cmd+n'.	
	menu
		addToggle: 'Implementors...' translated
		target: self
		selector: #browseImplementors
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: self theme smallDoItIcon;
		keyText: 'Cmd+m'.
	menu
		addToggle: 'Install incoming version' translated
		target: self
		selector: #loadMethodSelection
		getStateSelector: nil
		enablementSelector: #selectionIsMethodChange.
	menu lastItem
	 	font: self theme menuFont;
		icon: self theme smallUpdateIcon.
	^menu! !
