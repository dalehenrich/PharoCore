
!TestURI methodsFor: 'parsing tests'!
testSchemeAbsolutePass2
	| uri |
	uri := URI fromString: 'mailto:somebody@somewhere.nowhere'.
	self assert: (uri scheme = 'mailto').
	self assert: (uri isAbsolute).
	self assert: (uri isOpaque).
	self deny: (uri isRelative)! !
