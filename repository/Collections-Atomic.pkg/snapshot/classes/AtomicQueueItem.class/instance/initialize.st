
!AtomicQueueItem methodsFor: 'initialize-release'!
initialize
	"make circular"
	super initialize.
	next := self.! !
