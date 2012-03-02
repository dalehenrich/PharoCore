
!ImageMorph class methodsFor: 'instance creation'!
fromStream: aStream

	^self withForm: (ImageReadWriter formFromStream: aStream)! !
