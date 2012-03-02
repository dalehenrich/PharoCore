
!EventManager class methodsFor: 'accessing'!
actionMaps

	^ActionMaps ifNil: [ActionMaps := WeakIdentityKeyDictionary new]! !
