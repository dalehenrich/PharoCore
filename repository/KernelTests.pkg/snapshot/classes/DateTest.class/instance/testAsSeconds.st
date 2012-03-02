
!DateTest methodsFor: 'testing'!
testAsSeconds
	self assert: (aDate asSeconds) =   3252268800.
	self assert: (aDate asSeconds) =  ((103*365*24*60*60) + (22+25"leap days"*24*60*60)) .
	self assert: aDate  =  (Date fromSeconds: 3252268800).! !
