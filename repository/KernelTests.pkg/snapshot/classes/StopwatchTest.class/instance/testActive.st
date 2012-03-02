
!StopwatchTest methodsFor: 'Tests'!
testActive

	| sw |
	sw := Stopwatch new.
	sw activate.
	
	1 seconds asDelay wait.
	self 
		assert: (sw duration >= 1 seconds).

	2 seconds asDelay wait.
	self 
		assert: (sw duration >= 3 seconds).

	sw suspend.! !
