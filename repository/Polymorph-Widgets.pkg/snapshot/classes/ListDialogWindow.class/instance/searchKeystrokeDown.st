
!ListDialogWindow methodsFor: 'as yet unclassified'!
searchKeystrokeDown
	|interval|
	interval := searchMorph selectionInterval .
	((interval last == searchMorph content size)
	and: [ interval last < interval first ])
		ifFalse: [ ^ false ].
		
	self focusList.
	^ true! !
