
!SetTest methodsFor: 'some tests'!
testAllSetsAreHealthy
	
	self assert: (Set allInstances select: [:badSet | badSet isHealthy not ]) isEmpty.! !
