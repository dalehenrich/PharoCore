
!TDictionaryKeysValuesAssociationsAccess methodsFor: 'tests - fixture'!
test0FixtureDictionaryKeysValuesAssociationsAccess
	
	self shouldnt: [self nonEmpty ] raise: Error.
	self deny: self nonEmpty  isEmpty .! !
