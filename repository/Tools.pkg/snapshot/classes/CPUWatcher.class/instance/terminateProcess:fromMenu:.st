
!CPUWatcher methodsFor: 'process operations'!
terminateProcess: aProcess fromMenu: aMenuMorph
	aMenuMorph delete.
	self processBrowser terminateProcess: aProcess.! !
