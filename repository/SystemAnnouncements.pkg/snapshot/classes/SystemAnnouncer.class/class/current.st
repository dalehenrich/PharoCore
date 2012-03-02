
!SystemAnnouncer class methodsFor: 'accessing'!
current
	"Answer a system annoncer."
	
	^ announcer ifNil: [ announcer := Announcer new ]! !
