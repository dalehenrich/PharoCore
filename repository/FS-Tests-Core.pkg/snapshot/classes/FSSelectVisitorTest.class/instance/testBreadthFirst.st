
!FSSelectVisitorTest methodsFor: 'tests'!
testBreadthFirst
	| entries |
	entries := FSSelectVisitor breadthFirst: self root.
	self 
		assertEntries: entries
		are: #(
				'/alpha'
				'/alpha/beta'
				'/alpha/epsilon'
				'/alpha/beta/delta'
				'/alpha/beta/gamma'
				'/alpha/epsilon/zeta'
			)! !
