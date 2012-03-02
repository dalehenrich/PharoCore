
!TextMorphForEditView methodsFor: 'private'!
selectionChanged
	self sharesFindReplace 
		ifTrue: [self changed: #findReplaceSelection].
	self useExtraSelection
		ifTrue: [self refreshExtraSelection].
	super selectionChanged! !
