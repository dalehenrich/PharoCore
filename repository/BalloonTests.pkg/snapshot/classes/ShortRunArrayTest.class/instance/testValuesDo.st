
!ShortRunArrayTest methodsFor: 'testing'!
testValuesDo

	| count |
	count := 0.
	shortRunArray valuesCollect: [:value| count := count + 1].
	self assert: 5 equals: count.
! !
