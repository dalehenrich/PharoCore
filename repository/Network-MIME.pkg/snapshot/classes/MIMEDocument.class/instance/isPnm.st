
!MIMEDocument methodsFor: 'testing'!
isPnm
	^ self mainType = 'image'
		and: [self subType = 'pnm']! !
