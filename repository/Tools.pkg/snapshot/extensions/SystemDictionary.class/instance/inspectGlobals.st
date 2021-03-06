
!SystemDictionary methodsFor: '*Tools-Inspector'!
inspectGlobals
	"Smalltalk globals  inspectGlobals"
	
	| associations aDict |
	associations := ((self  keys select: [:aKey | ((self  at: aKey) isKindOf: Class) not]) asArray sort 
															collect: [:aKey | self associationAt: aKey]).
	aDict := IdentityDictionary new.
	associations do: [:as | aDict add: as].
	aDict inspectWithLabel: 'The Globals'! !
