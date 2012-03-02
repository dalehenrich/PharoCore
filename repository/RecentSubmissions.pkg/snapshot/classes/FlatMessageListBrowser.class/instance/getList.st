
!FlatMessageListBrowser methodsFor: 'list'!
getList

	list ifNotNil: [ ^list ].
	
	list := self model methodReferenceList.
	self forceAlphabeticalOrder ifTrue: [ list := list sort ].

	^ list! !
