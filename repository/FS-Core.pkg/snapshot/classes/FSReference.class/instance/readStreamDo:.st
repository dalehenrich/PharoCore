
!FSReference methodsFor: 'streams'!
readStreamDo: aBlock
	| stream |
	stream := self readStream.
	^ [ aBlock value: stream ] ensure: [ stream close ]! !
