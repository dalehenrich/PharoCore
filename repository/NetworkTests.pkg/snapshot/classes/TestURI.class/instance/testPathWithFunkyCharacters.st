
!TestURI methodsFor: 'test path'!
testPathWithFunkyCharacters
	"A relative path with exciting characters."

	<expectedFailure>

	| uri uriString |
	uriString := ';Super@c&a=l+i$,f-r_a.g!!i~l*i''s(t)i3c%20foobar/ative/path'.
	uri := URI fromString: uriString.
	self should: [uri asString = uriString].
	self shouldnt: [uri isAbsolute].
	self should: [uri path size = 3].! !
