
!MCMczWriter methodsFor: 'writing'!
flush
	zip writeTo: stream.
	stream close! !
