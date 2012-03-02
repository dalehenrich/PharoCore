
!ZnMultiPartFormDataEntity methodsFor: 'accessing'!
contentType: object
	"We only allow assignment compatible with our designated mime type.
	The main/sub must be equal but the parameters must be allowed to be different"
	
	| newType |
	newType := object asZnMimeType.
	self class designatedMimeType = newType
		ifTrue: [ contentType := newType ]! !