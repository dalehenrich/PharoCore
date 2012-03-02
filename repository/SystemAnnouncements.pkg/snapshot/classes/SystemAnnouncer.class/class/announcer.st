
!SystemAnnouncer class methodsFor: 'accessing'!
announcer
	"Answer a system annoncer."

	^ announcer ifNil: [ announcer := Announcer new ]! !
