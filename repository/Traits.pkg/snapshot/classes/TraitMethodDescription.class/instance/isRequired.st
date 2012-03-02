
!TraitMethodDescription methodsFor: 'testing'!
isRequired
	self isEmpty ifTrue: [^ false].
	^ self locatedMethods allSatisfy: [:each | each method isRequired]! !
