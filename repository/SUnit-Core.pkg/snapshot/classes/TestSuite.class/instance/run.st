
!TestSuite methodsFor: 'running'!
run
	| result |
	result := self resultClass new.
	[self run: result]
		ensure: [self resourceClass resetResources: self resources].
	^result! !
