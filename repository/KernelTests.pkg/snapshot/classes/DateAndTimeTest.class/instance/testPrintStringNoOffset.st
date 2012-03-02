
!DateAndTimeTest methodsFor: 'tests under design'!
testPrintStringNoOffset
	
	| localOffsetHours localOffsetMinutes |
	localOffsetHours := DateAndTime localOffset hours printStringPadded: 2.
	localOffsetMinutes := DateAndTime localOffset minutes printStringPadded: 2.
	self assert: ('2002-05-16T17:20' asDateAndTime printString = ('2002-05-16T17:20:00+{1}:{2}' format: {localOffsetHours. localOffsetMinutes})).
	self assert: ('2002-05-16T17:20:45' asDateAndTime printString = ('2002-05-16T17:20:45+{1}:{2}' format: {localOffsetHours. localOffsetMinutes})).! !
