
!TraitBehavior methodsFor: 'initialize-release'!
initialize
	super initialize.
	self methodDict: MethodDictionary new.
	self traitComposition: nil.
	users := IdentitySet new.! !
