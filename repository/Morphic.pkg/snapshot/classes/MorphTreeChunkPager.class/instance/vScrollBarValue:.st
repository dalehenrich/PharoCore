
!MorphTreeChunkPager methodsFor: 'user interface'!
vScrollBarValue: scrollValue
	| old |
	old := atBottom.
	self atBottom: (scrollValue < self verticalScrollbarFrontier) not.
	old ~= atBottom 
		ifTrue: [self buildPanel] 
	! !
