
!TextAlignment methodsFor: 'testing'!
= other 
	^ (other class == self class) 
		and: [other alignment = alignment]! !
