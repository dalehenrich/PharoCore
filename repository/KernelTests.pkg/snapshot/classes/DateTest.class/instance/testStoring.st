
!DateTest methodsFor: 'Tests'!
testStoring

	self	
		assert: date storeString = '''2 June 1973'' asDate';
		assert: date = ('2 June 1973' asDate).
! !
