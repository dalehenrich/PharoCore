
!ZnApplicationFormUrlEncodedEntity methodsFor: 'accessing'!
contentLength
	contentLength isNil ifTrue: [ self computeRepresentation ].
	^ contentLength ! !