
!NumberParser class methodsFor: 'instance creation'!
parse: aStringOrStream 
	^(self new)
		on: aStringOrStream;
		nextNumber! !
