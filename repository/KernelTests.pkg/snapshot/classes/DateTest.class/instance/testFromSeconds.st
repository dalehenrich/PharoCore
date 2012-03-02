
!DateTest methodsFor: 'Tests'!
testFromSeconds
	| d |
	d := self dateClass fromSeconds: 2285280000. 
	self
		assert: d = date.
! !
