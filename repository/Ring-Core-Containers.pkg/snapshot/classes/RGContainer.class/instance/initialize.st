
!RGContainer methodsFor: 'initialize-release'!
initialize

	super initialize.
	self definedClasses: IdentityDictionary new.
	self methods: IdentityDictionary new.
	self packages: IdentityDictionary new.! !
