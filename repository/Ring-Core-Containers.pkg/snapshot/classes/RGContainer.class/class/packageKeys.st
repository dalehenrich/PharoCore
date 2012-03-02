
!RGContainer class methodsFor: 'image package loading'!
packageKeys

	^ MCWorkingCopy allManagers collect:[ :pck| pck package name asSymbol -> ('*', pck package name asLowercase) ]! !
