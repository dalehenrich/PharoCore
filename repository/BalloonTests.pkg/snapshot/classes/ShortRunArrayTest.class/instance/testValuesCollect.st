
!ShortRunArrayTest methodsFor: 'testing'!
testValuesCollect

	self assert: (ShortRunArray newFrom: {2 . 2 . 2 . 4 . 6 . 6 . 2 . 2 . 20 . 20 . 20 . 20 . 20 . 20 . 20}) equals: (shortRunArray valuesCollect: [:value| value * 2]).
! !
