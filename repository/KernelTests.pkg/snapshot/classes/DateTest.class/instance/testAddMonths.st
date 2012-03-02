
!DateTest methodsFor: 'testing'!
testAddMonths
	self assert: (aDate addMonths: 0) yyyymmdd =  '2004-01-23'.	
	self assert: (aDate addMonths: 1) yyyymmdd =  '2004-02-23'.
	self assert: (aDate addMonths: 2) yyyymmdd =  '2004-03-23'.
	self assert: (aDate addMonths: 3) yyyymmdd =  '2004-04-23'.
	self assert: (aDate addMonths: 12) yyyymmdd =  '2005-01-23'.
	
	self assert: ((Date readFrom: '05-31-2017' readStream) addMonths: 1) yyyymmdd =  '2017-06-30'.
	self assert: ((Date readFrom: '02-29-2000' readStream) addMonths: 12) yyyymmdd =  '2001-02-28'! !
