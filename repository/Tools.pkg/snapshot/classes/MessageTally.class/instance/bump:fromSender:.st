
!MessageTally methodsFor: 'collecting leaves'!
bump: hitCount fromSender: senderTally
	"Add this hitCount to the total, and include a reference to the
	sender responsible for the increment"
	self bump: hitCount.
	senders ifNil: [senders := OrderedCollection new].
	senderTally ifNotNil: [senders add: (senderTally copyWithTally: hitCount)]! !
