
!Parser class methodsFor: 'setting'!
warningAllowed
	"Ask the user for certain situation such as use of undefined variables"
	
	^ Warns ifNil: [Warns := false]
	! !
