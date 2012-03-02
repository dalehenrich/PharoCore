
!DateTest methodsFor: 'Tests'!
testPrinting

	self	
		assert: date mmddyyyy = '6/2/1973';
		assert: date yyyymmdd = '1973-06-02';
		assert: (date printFormat: #(3 1 2 $!! 2 1 1)) = '1973!!2!!Jun'.
! !
