
!CodeSimulationTests methodsFor: 'tests'!
methodWithSourceGetting

	| node |
	node := [:some | some + 3] decompile.
	self assert: node notNil description: 'getting source failed'! !
