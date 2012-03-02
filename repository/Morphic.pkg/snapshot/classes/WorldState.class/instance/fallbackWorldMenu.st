
!WorldState methodsFor: 'worldmenu building'!
fallbackWorldMenu
	"Build the menu that is put up if something is going wrong with the menubuilder"
	| menu |
	menu := UIManager default newMenuIn:  ActiveWorld for: self.
	menu commandKeyHandler: self.
	menu addTitle: 'Fallback world menu'.
	menu addStayUpItem.
	menu add: 'Why you see this menu'
		target: self
		selector: #fallbackMenuExplanations.
	menu addLine.
	menu
		defaultTarget: Smalltalk tools;
		addList: Smalltalk tools mainMenuItems.
	menu addLine.
	menu add: 'Save'
		target: Smalltalk
		selector: #saveSession.
	menu add: 'Save as...'
		target: self class
		selector: #saveAs.
	menu add: 'Save and quit' 
		target: Smalltalk
		selector: #snapshot:andQuit:
		argumentList: {true. true}.
	menu add: 'Quit' 
		target: self class
		selector: #quitSession.
	^ menu! !
