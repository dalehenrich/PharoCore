
!SUnitExtensionsTest methodsFor: 'accessing'!
stream
	^stream ifNil: [stream := String new writeStream].! !
