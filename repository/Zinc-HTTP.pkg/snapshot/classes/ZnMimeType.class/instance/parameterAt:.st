
!ZnMimeType methodsFor: 'parameters'!
parameterAt: key
	^ self parameterAt: key ifAbsent: [ self error: 'Parameter not found: ', key asString ]! !
