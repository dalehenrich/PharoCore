
!Timespan methodsFor: 'squeak protocol'!
end 

	^ self duration asNanoSeconds = 0
		ifTrue: [ self start ]
		ifFalse: [ self next start - DateAndTime clockPrecision ]! !
