
!MorphTreeListManager methodsFor: 'mouse managing'!
mouseUp: event on: aNodeMorph 
	| path cmdOrCtrl |
	"No change if model is locked" 
	self listModel okToChange ifFalse: [^self].
	self listModel okToDiscardEdits ifFalse: [^ self].

	cmdOrCtrl := self commandOrCrontrolKeyPressed: event.
	path := (event shiftPressed and: [self isMultiple])
				ifTrue: [self shiftSelectMorph: aNodeMorph]
				ifFalse: [
					self autoMultiSelection
						ifTrue: [self selectedMorphList ifEmpty: [] ifNotEmpty: [:l | l last path collect: [:p | p complexContents]]]
						ifFalse: [self selectMorph: aNodeMorph multiple: ((cmdOrCtrl and: [self isMultiple]) or: [self autoMultiSelection])]].
	self selectionUpdateFromViewWhile: [ | selHolder | 
		selHolder := self newSelectionHolderWithNodePath: path.
		self listModel selection: selHolder].
	lastClickedMorph := aNodeMorph.
	self selectionChanged. 
! !
