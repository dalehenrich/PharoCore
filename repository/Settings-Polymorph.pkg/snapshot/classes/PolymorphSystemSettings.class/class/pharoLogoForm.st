
!PolymorphSystemSettings class methodsFor: 'desktop'!
pharoLogoForm
	^ Form fromBinaryStream: self pharoLogoContents base64Decoded asByteArray readStream! !
