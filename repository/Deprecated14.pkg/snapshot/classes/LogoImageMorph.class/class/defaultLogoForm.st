
!LogoImageMorph class methodsFor: 'defaultinstance'!
defaultLogoForm
	^ Form fromBinaryStream: self defaultLogoContents base64Decoded asByteArray readStream! !
