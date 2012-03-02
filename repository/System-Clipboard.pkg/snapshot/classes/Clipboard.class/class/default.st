
!Clipboard class methodsFor: 'accessing'!
default
	^Default ifNil: [Default := OSPlatform current clipboardClass new].! !
