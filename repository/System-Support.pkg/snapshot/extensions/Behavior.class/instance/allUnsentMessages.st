
!Behavior methodsFor: '*System-Support'!
allUnsentMessages
	"Answer an array of all the messages defined by the receiver that are not sent anywhere in the system."

	^ SystemNavigation default allUnsentMessagesIn: self selectors! !
