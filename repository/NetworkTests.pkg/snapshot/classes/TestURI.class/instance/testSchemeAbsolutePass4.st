
!TestURI methodsFor: 'parsing tests'!
testSchemeAbsolutePass4
	| uri |
	uri := URI fromString: 'mailto:somebody@somewhere.nowhere#fragment'.
	self assert: (uri scheme = 'mailto').
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque).
	self deny: (uri isRelative).
	self assert: (uri fragment = 'fragment').

! !
