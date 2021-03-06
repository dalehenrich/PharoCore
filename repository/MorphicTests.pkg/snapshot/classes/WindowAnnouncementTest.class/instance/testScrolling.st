
!WindowAnnouncementTest methodsFor: 'window change'!
testScrolling

	| myMorph pane t |
	window := SystemWindow labelled: 'foo'.
	myMorph := Morph new.
	myMorph extent: 1000@1000.
	pane := ScrollPane new.
	pane scroller addMorph: myMorph.
	window
		addMorph: pane
		fullFrame: (LayoutFrame fractions: (0 @ 0 corner: 1 @ 1)).

	t := 0 @ 0.
	window openInWorld.
	window announcer on: WindowScrolling do: [:ann | t := t + ann step ].
	pane hScrollBarValue: 10.
	pane vScrollBarValue: 5.

	window delete.
	
	self assert: (t = (10 @ 5)).
	window := nil! !
