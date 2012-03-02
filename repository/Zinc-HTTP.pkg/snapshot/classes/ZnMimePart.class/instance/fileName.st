
!ZnMimePart methodsFor: 'accessing'!
fileName
	^ self detectContentDispositionValue: 'filename'! !
