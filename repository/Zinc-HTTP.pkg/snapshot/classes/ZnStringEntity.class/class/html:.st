
!ZnStringEntity class methodsFor: 'instance creation'!
html: string
	^ (self type: ZnMimeType textHtml)
		string: string;
		yourself! !
