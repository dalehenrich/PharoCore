
!CommandLine class methodsFor: 'instance creation'!
uniqueInstance
	^ singleton ifNil: [singleton := self basicNew initialize]! !
