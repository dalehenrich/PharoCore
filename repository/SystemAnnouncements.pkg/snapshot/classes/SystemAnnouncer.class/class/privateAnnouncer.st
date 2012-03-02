
!SystemAnnouncer class methodsFor: 'accessing'!
privateAnnouncer
	"Answer a system annoncer."

	^ privateAnnouncer ifNil: [ privateAnnouncer := Announcer new ]! !
