
!MorphTreeListManager methodsFor: 'selection change'!
selectAll
	| selHolder |
	self allNodeMorphs isEmpty
		ifTrue: [^ self].
	self isMultiple
		ifFalse: [^ self]. 
	self addAllToSelection: self allNodeMorphs.
	self selectionChanged.
	self selectionUpdateFromViewWhile: [
		selHolder := self newSelectionHolderWithNodePath: (self allNodeMorphs last path collect: [:m | m complexContents]).
		self listModel selection: selHolder].
! !
