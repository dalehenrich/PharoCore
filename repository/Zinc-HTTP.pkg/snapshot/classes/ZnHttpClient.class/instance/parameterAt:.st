
!ZnHttpClient methodsFor: 'accessing'!
parameterAt: aName
	^ self params at: aName ifAbsent: [ nil ]! !
