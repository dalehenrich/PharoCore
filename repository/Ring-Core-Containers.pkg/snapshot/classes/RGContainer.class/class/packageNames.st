
!RGContainer class methodsFor: 'image package loading'!
packageNames

	^ MCWorkingCopy allManagers collect:[ :pck| pck package name asSymbol ]! !
