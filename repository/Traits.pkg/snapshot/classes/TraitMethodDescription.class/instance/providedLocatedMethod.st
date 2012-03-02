
!TraitMethodDescription methodsFor: 'accessing'!
providedLocatedMethod
	| locatedMethod aLocatedMethod refOrigin |
	locatedMethod := nil.
	self locatedMethods ifEmpty: [ ^ nil].

	self locatedMethods size > 1
		ifTrue: [ 	aLocatedMethod := self locatedMethods anyOne.
						refOrigin := (aLocatedMethod realClass >> aLocatedMethod selector) origin.
						(self locatedMethods 
							allSatisfy: [:each | each method origin == refOrigin])
						ifTrue: [^ aLocatedMethod].  ].
	
	self locatedMethods do: [:each |
		each method isProvided ifTrue: [
			locatedMethod isNil ifFalse: [^nil].
			locatedMethod := each]].
	^locatedMethod! !
