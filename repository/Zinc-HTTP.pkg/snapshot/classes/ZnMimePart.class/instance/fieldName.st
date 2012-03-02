
!ZnMimePart methodsFor: 'accessing'!
fieldName
	^ self detectContentDispositionValue: 'name'! !
