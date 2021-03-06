
!TimeTest methodsFor: 'tests'!
testSqueakInquiries
	| timewords totalseconds condensed corrected |
	self assert: 
		(self timeClass namesForTimes: #(2 10000023 10000026))
			= #('January, 1901' 'April, 1901, 4/26/1901, 5:47 pm' 'April, 1901, 4/26/1901, 5:47 pm').

	timewords := #(0.5 30 62 130 4000 10000 60000 86401) 
		collect: [ :ss | self timeClass humanWordsForSecondsAgo: ss ].
	self assert: 
		timewords = #('a second ago' '30 seconds ago' 'a minute ago' '2 minutes ago' 
			'an hour ago' '2 hours ago' '16 hours ago' 'yesterday').

	totalseconds :=  self timeClass totalSeconds.
	condensed := self timeClass condenseBunches: 
		(#(20 400 401  20000 20200 20300 40000 45000  200000 201000 202000) 
			collect: [:tt | totalseconds - tt]).
	corrected := condensed collect: [ :e | totalseconds - e ].
	self
		assert: (corrected includesAllOf: #(20 400 401 20000 40000 45000 200000)).
! !
