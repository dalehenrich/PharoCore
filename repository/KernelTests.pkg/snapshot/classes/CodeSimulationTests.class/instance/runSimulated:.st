
!CodeSimulationTests methodsFor: 'tests'!
runSimulated: aBlock
	thisContext runSimulated: aBlock contextAtEachStep: [ :current |  ]! !
