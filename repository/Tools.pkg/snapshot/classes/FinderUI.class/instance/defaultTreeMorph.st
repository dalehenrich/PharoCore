
!FinderUI methodsFor: 'items creation'!
defaultTreeMorph

	^ super defaultTreeMorph
		doubleClickSelector: #doubleClick;
		keystrokeActionSelector: #keyStroke:;
		getMenuSelector: #menu:shifted:;
		yourself.! !
