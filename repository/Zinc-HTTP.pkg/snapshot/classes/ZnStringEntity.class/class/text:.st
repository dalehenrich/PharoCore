
!ZnStringEntity class methodsFor: 'instance creation'!
text: string
	^ (self type: ZnMimeType textPlain)
		string: string;
		yourself! !
