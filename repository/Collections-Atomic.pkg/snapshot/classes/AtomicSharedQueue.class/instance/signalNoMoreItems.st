
!AtomicSharedQueue methodsFor: 'signaling'!
signalNoMoreItems
	"queue is empty, reset sema signals"
	availSema initSignals ! !
