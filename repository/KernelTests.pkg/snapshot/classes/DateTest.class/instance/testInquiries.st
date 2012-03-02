
!DateTest methodsFor: 'Tests'!
testInquiries

	self	
		assert: date dayOfMonth = 2;
		assert: date dayOfYear = 153;
		assert: date daysInMonth = 30;
		assert: date daysInYear = 365;
		assert: date daysLeftInYear = (365 - 153);
		assert: date firstDayOfMonth = 152.
! !
