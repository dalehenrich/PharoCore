
!FT2Version class methodsFor: 'instance creation'!
current
	"
	FT2Version current
	"
	^ [(self new)
		libraryVersion;
		yourself] on: Error do: [:ex | ex return: nil]! !
