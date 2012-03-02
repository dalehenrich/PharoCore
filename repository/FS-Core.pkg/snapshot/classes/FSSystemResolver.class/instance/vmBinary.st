
!FSSystemResolver methodsFor: 'origins'!
vmBinary
	^ self resolveString: (SmalltalkImage current vmFullPath)! !
