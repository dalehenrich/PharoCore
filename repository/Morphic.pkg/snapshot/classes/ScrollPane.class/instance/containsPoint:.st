
!ScrollPane methodsFor: 'geometry testing'!
containsPoint: aPoint

	(super containsPoint: aPoint) ifTrue: [^ true].
	
	"Also include v scrollbar when it is extended..."
	((retractableScrollBar and: [submorphs includes: scrollBar]) and:
		[scrollBar containsPoint: aPoint])
			ifTrue:[ ^true ].
		
	"Also include hScrollbar when it is extended..."
	^(retractableScrollBar and: [self hIsScrollbarShowing]) and:
		[hScrollBar containsPoint: aPoint]
! !
