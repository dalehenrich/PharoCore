
!GenericUrl methodsFor: 'parsing'!
privateInitializeFromText: aString
	schemeName := Url schemeNameForString: aString.
	locator :=  schemeName 
		ifNil: [ aString ]
		ifNotNil: [ aString copyFrom: (schemeName size+2) to: aString size ].! !
