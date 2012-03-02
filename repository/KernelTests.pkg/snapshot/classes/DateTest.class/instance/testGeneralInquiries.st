
!DateTest methodsFor: 'Tests'!
testGeneralInquiries

	| shuffled indices names now | 

	shuffled := #(#January #February #March #April #May #June #July 
					#August #September #October #November #December) shuffled.
	indices := shuffled collect: [ :m | self dateClass indexOfMonth: m ].
	names := indices collect: [ :i | self dateClass nameOfMonth: i ].
	self assert: names = shuffled.

	shuffled := #(#Monday #Tuesday #Wednesday #Thursday #Friday #Saturday #Sunday) shuffled.
	indices := shuffled collect: [ :m | self dateClass dayOfWeek: m ].
	names := indices collect: [ :i | self dateClass nameOfDay: i ].
	self assert: names = shuffled.
	
	now  := self dateClass dateAndTimeNow.
	self 
		assert: now size = 2;
		assert: now first = self dateClass today.

	self assert: (self dateClass firstWeekdayOfMonth: #June year: 1973) = 6.

	self
		assert: (self dateClass leapYear: 1973) = 0;
		assert: (self dateClass leapYear: 1972) = 1;
		assert: (self dateClass daysInYear: 1973) = 365;
		assert: (self dateClass daysInYear: 1972) = 366;
		assert: (self dateClass daysInMonth: #February forYear: 1973) = 28;
		assert: (self dateClass daysInMonth: #February forYear: 1972) = 29.
! !
