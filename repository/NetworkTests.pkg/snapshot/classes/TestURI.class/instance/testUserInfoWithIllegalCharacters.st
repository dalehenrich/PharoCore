
!TestURI methodsFor: 'expected failures'!
testUserInfoWithIllegalCharacters
	"self debug: #testUserInfoWithIllegalCharacters"

	<expectedFailure>

	self should: [URI fromString: 'scheme://user%aeinfo@host/']
		raise: Error.
		
	"strange Escaped octets, that is, triplets consisting of the percent character ('%') followed by two hexadecimal digits ('0'-'9', 'A'-'F', and 'a'-'f')"! !
