
!RunArray methodsFor: 'adding'!
addLast: value times: times
	"Add value as the last element of the receiver, the given number of times"
	self deprecated: 'use add:withOccurrences:'.
	^self add: value withOccurrences: times! !
