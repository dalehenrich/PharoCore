
!ZnClient methodsFor: 'accessing request'!
accept: mimeTypeObject
	"Set the Accept HTTP header to mimeTypeObject for the current request."

	| mimeType |
	mimeType := mimeTypeObject asZnMimeType.
	request setAccept: mimeType! !
