
!IntervalTest methodsFor: 'tests'!
testNumericTypes

	(3 asNumber) to: 5 = #(3 4 5).
	
	3.0 to: 5.0 = #(3.0 4.0 5.0).
	3.0 to: 5.0 by: 0.5 = #(3.0 3.5 4.0 4.5 5.0).
	
	3/1 to: 5/1 = #(3 4 5).
	1/2 to: 5/2 by: 1/2 = #(1/2 1 3/2 2 5/2).! !
