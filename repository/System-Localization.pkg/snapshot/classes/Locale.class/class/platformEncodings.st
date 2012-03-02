
!Locale class methodsFor: 'initialization'!
platformEncodings
	PlatformEncodings isEmptyOrNil ifTrue: [ self initializePlatformEncodings ].
	^PlatformEncodings
! !
