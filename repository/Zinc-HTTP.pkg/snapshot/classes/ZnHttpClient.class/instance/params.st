
!ZnHttpClient methodsFor: 'accessing'!
params
	^ params ifNil: [ params := ZnMultiValueDictionary new ]! !
