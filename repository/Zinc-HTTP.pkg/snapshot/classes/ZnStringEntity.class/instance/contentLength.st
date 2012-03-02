
!ZnStringEntity methodsFor: 'accessing'!
contentLength
	contentLength isNil ifTrue: [ self computeContentLength ].
	^ contentLength! !
