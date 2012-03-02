
!DateTest methodsFor: 'Tests'!
testNew
	| epoch |
	epoch := self dateClass newDay: 1 year: 1901.
	self assert: (self dateClass new = epoch).! !
