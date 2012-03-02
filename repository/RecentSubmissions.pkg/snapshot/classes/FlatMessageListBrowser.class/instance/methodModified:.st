
!FlatMessageListBrowser methodsFor: 'announcements'!
methodModified: ann

	| ref |
	ref := self getList detect: [:any | (any realClass = ann oldItem methodClass) and: [ any selector = ann oldItem selector ]] ifNone: [ nil ].
	ref ifNotNil: [ | newRef |
			newRef := ann item methodReference.
			self model methodReferenceList remove: ref.
			self model addMethodReferenceSilently: newRef.
			selectedItem := newRef.
			self changed: #getList.
			self selectedItemIndex: (self getList indexOf: ref)]! !
