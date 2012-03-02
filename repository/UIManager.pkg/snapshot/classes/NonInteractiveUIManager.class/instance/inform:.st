
!NonInteractiveUIManager methodsFor: 'ui requests'!
inform: aString

	"Just log notifications"
	(ProvideAnswerNotification signal: aString) ifNotNil: [:answer | ^true].
	
	Smalltalk logDuring: [:logger |
		logger 
			cr;
			nextPutAll: 'Notice: ';
			nextPutAll: aString;
			cr ].
	
	
	Transcript show: aString; cr.! !
