
!BlockClosure methodsFor: 'evaluating'!
bench
	"Return how many times the receiver can get executed in 5 seconds.  Answer a meaningful description."
	"[3.14 printString] bench"
	
	| startTime endTime count roundTo3Digits  |
	roundTo3Digits := [:num |
               | rounded lowDigit |
               rounded := (num * 1000) rounded. "round to 1/1000"
               lowDigit := (rounded numberOfDigitsInBase: 10) - 3. "keep only first 3 digits"
               rounded := rounded roundTo:(10 raisedTo: lowDigit).
               (lowDigit >= 3 or: [rounded \\ 1000 = 0]) "display fractional part only when needed"
                       ifTrue: [(rounded // 1000) asStringWithCommas]
                       ifFalse: [(rounded / 1000.0) printString]].
	count := 0.
	endTime := Time millisecondClockValue + 5000.
	startTime := Time millisecondClockValue.
	[ Time millisecondClockValue > endTime ] whileFalse: [ self value.  count := count + 1 ].
	endTime := Time millisecondClockValue.
	^count = 1
		ifTrue: [ (roundTo3Digits value: (endTime - startTime) / 1000) , ' seconds.' ]
		ifFalse:  [ (roundTo3Digits value: (count * 1000) / (endTime - startTime)) , ' per second.' ]! !
