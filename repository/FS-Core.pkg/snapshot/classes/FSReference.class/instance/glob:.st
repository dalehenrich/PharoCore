
!FSReference methodsFor: 'enumerating'!
glob: aBlock
	^ FSSelectVisitor breadthFirst: self select: aBlock! !
