
!MIMEDocument methodsFor: 'testing'!
isGif
	^ self mainType = 'image'
		and: [self subType = 'gif']! !
