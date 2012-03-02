
!ZnEntityReader methodsFor: 'testing'!
hasContentLength
	^ self headers includesKey: 'Content-Length'! !
