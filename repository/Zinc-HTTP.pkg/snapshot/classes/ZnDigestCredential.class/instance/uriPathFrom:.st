
!ZnDigestCredential methodsFor: 'accessing'!
uriPathFrom: urlObject
	^ urlObject pathPrintString ifNil: [ '/' ]! !
