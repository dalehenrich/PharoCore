
!MultiByteFileStream methodsFor: 'crlf private'!
doConversion

	^wantsLineEndConversion == true and: [ lineEndConvention notNil ]! !
