
!Workspace methodsFor: 'accessing'!
lastContents
	LastContents ifNil: [LastContents := OrderedCollection new].
	^ LastContents! !
