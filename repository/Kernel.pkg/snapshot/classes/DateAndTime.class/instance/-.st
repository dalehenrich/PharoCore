
!DateAndTime methodsFor: 'ansi protocol'!
- operand
	"operand conforms to protocol DateAndTime or protocol Duration"

	^ (operand respondsTo: #asDateAndTime)
		ifTrue: 
			[ | lticks rticks |
			lticks := self asLocal ticks.
	
		rticks := operand asDateAndTime asLocal ticks.
			Duration
 				seconds: (SecondsInDay *(lticks first - rticks first)) + 
							(lticks second - rticks second)
 				nanoSeconds: (lticks third - rticks third) ]
	
	ifFalse:
		
 	[ self + (operand negated) ].
! !
