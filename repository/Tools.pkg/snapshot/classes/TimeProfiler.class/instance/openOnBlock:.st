
!TimeProfiler methodsFor: 'as yet unclassified'!
openOnBlock: aBlock 
	self runBlock: aBlock pollingEvery: MessageTally defaultPollPeriod.
	self open.
	^ self! !
