
!HostWindowTests class methodsFor: 'as yet unclassified'!
isAbstract
	"Host windows logic is currently only supported by OSX VMs"
	^self isMacintosh not! !
