
!NonReentrantWeakMessageSend methodsFor: 'evaluating'!
execute: aBlock
	"Answer the value of the block or nil if already executing."

	self executing ifTrue: [^nil].
	self executing: true.
	^aBlock ensure: [self executing: false]! !
