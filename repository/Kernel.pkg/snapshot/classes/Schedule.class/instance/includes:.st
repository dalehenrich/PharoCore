
!Schedule methodsFor: 'squeak protocol'!
includes: aDateAndTime

	| dt |
	dt := aDateAndTime asDateAndTime.
	self scheduleDo: [ :e | e = dt ifTrue: [^true] ].
	^ false.
! !
