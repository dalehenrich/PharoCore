
!MessageSet methodsFor: 'private'!
buildMorphicMessageList
	"Build my message-list object in morphic"

	| aListMorph |
	aListMorph := PluggableListMorph new.
	aListMorph
		on: self list: #messageList
		selected: #messageListIndex changeSelected: #messageListIndex:
		menu: #messageListMenu:shifted:
		keystroke: #messageListKey:from:.
	aListMorph enableDragNDrop: true.
	aListMorph menuTitleSelector: #messageListSelectorTitle.
	^ aListMorph

! !
