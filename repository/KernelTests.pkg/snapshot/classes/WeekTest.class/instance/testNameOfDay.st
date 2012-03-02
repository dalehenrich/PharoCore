
!WeekTest methodsFor: 'Tests'!
testNameOfDay
	| days |
	days := #(#Sunday #Monday #Tuesday #Wednesday #Thursday #Friday #Saturday).
	
	days withIndexDo: [:item :index | self assert: (Week nameOfDay: index) = item].
	
	self should: [Week nameOfDay: 0] raise: TestResult error.
	self should: [Week nameOfDay: 8] raise: TestResult error.
	self should: [Week nameOfDay: #Sunday] raise: TestResult error.! !
