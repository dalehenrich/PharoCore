
!Browser class methodsFor: 'initialization'!
unload
	"Unload the receiver from global registries"
	SystemBrowser unregister: self.! !
