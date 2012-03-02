
!RGNamespace methodsFor: 'initialize-release'!
initialize

	super initialize.
	self globalVariables: IdentityDictionary new.
	self pools: IdentityDictionary new.! !
