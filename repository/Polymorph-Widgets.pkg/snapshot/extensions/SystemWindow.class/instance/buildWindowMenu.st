
!SystemWindow methodsFor: '*Polymorph-Widgets'!
buildWindowMenu
	"Build and answer the window menu."
	
	| aMenu |
	aMenu := self theme newMenuIn: self for: self.
	aMenu addToggle: 'Close' translated target: self
		selector: #closeBoxHit getStateSelector: nil
		enablementSelector: #allowedToClose.
	aMenu lastItem icon: self theme windowCloseForm.
	aMenu addLine.
	aMenu add: 'About' translated action: #showAbout.
	aMenu lastItem icon: self theme smallHelpIcon.
	aMenu addLine.
	aMenu addLine.
	aMenu add: 'Change title...' translated action: #relabel.
	aMenu addLine.
	aMenu add: 'Send to back' translated action: #sendToBack.
	aMenu add: 'Make next-to-topmost' translated action: #makeSecondTopmost.
	aMenu addLine.
	self mustNotClose
		ifFalse:
			[aMenu add: 'Make unclosable' translated action: #makeUnclosable]
		ifTrue:
			[aMenu add: 'Make closable' translated action: #makeClosable].
	aMenu
		add: (self isSticky ifTrue: ['Make draggable'] ifFalse: ['Make undraggable']) translated 
		action: #toggleStickiness.
	aMenu addLine.
	self isMaximized
		ifTrue: [aMenu add: 'Restore' translated action: #expandBoxHit.
				aMenu lastItem icon: self theme windowMaximizeForm]
		ifFalse: [aMenu add: 'Maximize' translated action: #expandBoxHit.
				aMenu lastItem icon: self theme windowMaximizeForm].
	self isCollapsed ifFalse: [aMenu add: 'Window color...' translated action: #setWindowColor].
	^aMenu! !
