
!GIFReadWriter methodsFor: 'accessing'!
understandsImageFormat
	^('abc' collect: [:x | stream next asCharacter]) = 'GIF'! !
