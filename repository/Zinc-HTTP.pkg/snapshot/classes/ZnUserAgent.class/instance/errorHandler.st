
!ZnUserAgent methodsFor: 'accessing'!
errorHandler
	^ errorHandler ifNil: [ errorHandler := self defaultErrorHandler ]! !
