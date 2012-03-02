
!TestSuite methodsFor: 'accessing'!
resources
	resources isNil ifTrue: [resources := self defaultResources].
	^resources! !
