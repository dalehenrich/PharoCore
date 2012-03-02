
!TelnetProtocolClient methodsFor: 'private'!
lastResponse: aString
	super lastResponse: aString.
	responseCode := self determineResponseCode! !
