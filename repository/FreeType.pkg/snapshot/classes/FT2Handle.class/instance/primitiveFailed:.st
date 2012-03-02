
!FT2Handle methodsFor: 'error handling'!
primitiveFailed: aString
	^FT2Error new
		signal: aString! !
