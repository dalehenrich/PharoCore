
!URI class methodsFor: 'instance creation'!
fromString: aString
	| parseString scheme |
	parseString := aString trimBoth.
	scheme := self extractSchemeFrom: parseString.
	^scheme
		ifNil: [HierarchicalURI new relativeFromString: aString]
		ifNotNil: [self absoluteFromString: aString scheme: scheme]
! !
