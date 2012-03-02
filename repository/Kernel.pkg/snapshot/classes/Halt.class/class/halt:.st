
!Halt class methodsFor: 'halting'!
halt: aString
	"backward compatible method with self halt:"

	self signal: aString! !
