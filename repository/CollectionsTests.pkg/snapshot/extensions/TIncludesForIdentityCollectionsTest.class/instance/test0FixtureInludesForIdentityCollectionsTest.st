
!TIncludesForIdentityCollectionsTest methodsFor: 'tests - fixture'!
test0FixtureInludesForIdentityCollectionsTest
	self 
		shouldnt: [ self identityCollectionWithElementsCopyNotIdentical ]
		raise: Error.
	self identityCollectionWithElementsCopyNotIdentical do: [ :each | self deny: each == each copy ]! !
