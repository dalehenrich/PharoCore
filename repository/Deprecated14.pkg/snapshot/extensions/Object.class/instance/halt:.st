
!Object methodsFor: '*deprecated14'!
halt: aString 
	
	self deprecated: 'Use #halt. Since you end up in a debugger, aString provides little information' on: '8/29/2011' in: '1.4'.
	Halt now: aString! !
