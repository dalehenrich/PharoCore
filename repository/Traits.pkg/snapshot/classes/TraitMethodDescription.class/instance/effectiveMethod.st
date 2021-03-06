
!TraitMethodDescription methodsFor: 'accessing'!
effectiveMethod
	"Return the effective compiled method of this method description." 

	| locatedMethod method |
	method := self providedMethod.
	method isNil ifFalse: [^ method].
	method := self conflictMethod.
	method isNil ifFalse: [^ method].
	^ self requiredMethod.! !
