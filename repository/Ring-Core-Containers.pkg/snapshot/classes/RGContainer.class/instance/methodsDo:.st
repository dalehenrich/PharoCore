
!RGContainer methodsFor: 'iterating'!
methodsDo: aBlock

	self methods
		do:[ :each| aBlock value: each ]! !
