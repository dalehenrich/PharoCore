
!FileDirectoryWrapper methodsFor: 'accessing'!
icon
	"Answer a form to be used as icon"
	"^ item isRemoteDirectory
		ifTrue: [ self theme smallRemoteOpenIcon]
		ifFalse: [self theme smallOpenIcon]"
	^ self theme smallOpenIcon! !
