
!ClassDescription methodsFor: 'organization'!
organization
	"Answer the instance of ClassOrganizer that represents the organization 
	of the messages of the receiver."

	organization ifNil:
		[self organization: (ClassOrganizer defaultList: self selectors asArray sort)].
	(organization isMemberOf: Array) ifTrue:
		[self recoverFromMDFaultWithTrace].
	
	"Making sure that subject is set correctly. It should not be necessary."
	organization ifNotNil: [organization setSubject: self].
	^ organization! !
