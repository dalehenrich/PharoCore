
!ShortRunArrayTest methodsFor: 'testing'!
testSwapRun

	| swapped |
	swapped := shortRunArray swapRuns.
	self assert:  #(3 1 1 2 2 2 2 7 7 7 7 7 7 7 7 7 7) equals: swapped asArray.! !
