
!Class methodsFor: '*Monticello'!
poolDictionaryNames
	^ self sharedPools collect: [:ea | self environment keyAtIdentityValue: ea]! !
