
!CommandLineUIManager methodsFor: 'as yet unclassified'!
stderr
	
	 FileStream stderr converter installLineEndConvention: String crlf.
	^ FileStream stderr! !
