
!GeneralScrollPane methodsFor: 'as yet unclassified'!
vScrollbarNeeded
	"Return whether the vertical scrollbar is needed."
	
	^self scrollTarget height +
		(self scrollTarget width > self innerBounds width
			 ifTrue: [self scrollBarThickness] ifFalse: [0]) >
		self innerBounds height! !