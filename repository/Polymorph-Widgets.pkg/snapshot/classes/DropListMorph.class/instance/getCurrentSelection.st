
!DropListMorph methodsFor: 'as yet unclassified'!
getCurrentSelection
	"Answer the current selection from the model."

	|mySelection|
	mySelection := self model perform: self getIndexSelector.
	^(self list includes: mySelection)
		ifTrue: [mySelection]! !
