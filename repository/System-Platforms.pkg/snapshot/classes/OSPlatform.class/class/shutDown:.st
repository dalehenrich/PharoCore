
!OSPlatform class methodsFor: 'class initialization'!
shutDown: quitting
	"The system is going down"
	Current ifNotNil:[Current shutDown: quitting].
! !