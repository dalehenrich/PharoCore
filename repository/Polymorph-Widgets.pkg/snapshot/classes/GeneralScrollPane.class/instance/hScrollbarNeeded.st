
!GeneralScrollPane methodsFor: 'as yet unclassified'!
hScrollbarNeeded
	"Return whether the horizontal scrollbar is needed."
	
	^self scrollTarget width +
		(self scrollTarget height > self innerBounds height
			 ifTrue: [self scrollBarThickness] ifFalse: [0]) >
		self innerBounds width! !
