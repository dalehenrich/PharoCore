
!UUIDGenerator class methodsFor: 'instance creation'!
default
	Default ifNil: [self generateDefault].
	^Default! !
