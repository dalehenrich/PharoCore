
!VirtualMachine class methodsFor: 'attributes'!
vmFileName

	^ (FilePath pathName: (Smalltalk vmFullPath) isEncoded: true) asSqueakPathName! !
