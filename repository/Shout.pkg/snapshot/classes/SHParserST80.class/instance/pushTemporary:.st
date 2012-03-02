
!SHParserST80 methodsFor: 'parse support'!
pushTemporary: aString 
	(temporaries
		at: blockDepth
		ifAbsentPut: [OrderedCollection new: 10])
		add: aString! !
