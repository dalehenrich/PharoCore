
!VirtualMachine class methodsFor: 'attributes'!
maxFilenameLength
	"Return the maximal filename length (only under MacOS)"
	"Smalltalk vm maxFilenameLength"

	^self getSystemAttribute: 1201! !
