
!MorphicUIManager methodsFor: 'ui requests'!
messageNames: aMessageNames inMorphicWindowWithInitialSearchString: initialString
	"Answer a morphic window with the given initial search string, nil if none"

"MessageNames openMessageNames"

	| window selectorListView secondDivider horizDivider searchPane searchButton searchTextMorph searchColumn|
	window := (StandardWindow labelled: 'Message Names' translated) model: aMessageNames.
	secondDivider := 0.5.
	horizDivider := 0.5.

	searchTextMorph := window
		newTextEntryFor: aMessageNames
		getText: #searchString
		setText: #searchString:from:
		help: nil.
	searchTextMorph
		ghostText: 'type here, then click Search' translated;
		vResizing: #spaceFill;
		hResizing: #spaceFill;
		askBeforeDiscardingEdits: false.
	searchButton := window
		newButtonFor: aMessageNames
		action: #doSearchFrom:
		label: 'Search' translated
		help: 'Type some letters into the pane at right, and then press this Search button (or hit RETURN) and all method selectors that match what you typed will appear in the list pane below.  Click on any one of them, and all the implementors of that selector will be shown in the right-hand pane, and you can view and edit their code without leaving this tool.' translated.
	searchButton arguments: {searchTextMorph}.
	
	searchPane := window
		newRow: {searchButton. searchTextMorph}.
	initialString isEmptyOrNil ifFalse:
		[searchTextMorph setText: initialString].

	selectorListView := window
		newListFor: aMessageNames
		list: #selectorList
		selected:  #selectorListIndex
		changeSelected: #selectorListIndex:
		help: nil.
	selectorListView
		getMenuSelector: #selectorListMenu:;
		keystrokeActionSelector: #selectorListKey:from:;
		menuTitleSelector: #selectorListMenuTitle;
		useSquareCorners.
	searchColumn := window newColumn: {searchPane. selectorListView}.
	searchColumn cellInset: ProportionalSplitterMorph splitterWidth.
	window
		addMorph: searchColumn
		frame: (0 @ 0 corner: horizDivider @ secondDivider);
		addMorph: aMessageNames buildMorphicMessageList
		frame: (horizDivider @ 0 corner: 1@ secondDivider);
		rememberKeyboardFocus: searchTextMorph.

	aMessageNames 
		addLowerPanesTo: window 
		at: (0 @ secondDivider corner: 1@1) 
		with: nil.

	initialString isEmptyOrNil ifFalse:
		[aMessageNames searchString: initialString].
	^ window! !
