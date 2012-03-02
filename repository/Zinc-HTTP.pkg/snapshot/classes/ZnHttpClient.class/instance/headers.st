
!ZnHttpClient methodsFor: 'accessing'!
headers
	^ headers ifNil: [ headers := ZnMultiValueDictionary new ]! !
