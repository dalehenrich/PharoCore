
!FSSelectVisitorTest methodsFor: 'tests'!
testBreadthFirstSelect
	| entries |
	entries := FSSelectVisitor breadthFirst: self root select: [ :node| node name endsWith: #a].
	self 
		assertEntries: entries
		are: #(
				'/alpha'
				'/alpha/beta'
				'/alpha/beta/delta'
				'/alpha/beta/gamma'
				'/alpha/epsilon/zeta'
			)! !
