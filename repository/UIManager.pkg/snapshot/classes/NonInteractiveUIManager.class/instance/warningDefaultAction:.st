
!NonInteractiveUIManager methodsFor: 'default actions'!
warningDefaultAction: aWarning

	"Pass all warnings, but log them"
	
	Smalltalk logDuring: [:logger |
		logger 
			cr;
			nextPutAll: '*** Warning: ';
			nextPutAll: aWarning description;
			cr ].
	aWarning resume.

	! !
