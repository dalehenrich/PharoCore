
!ZnLimitedReadStream methodsFor: 'accessing'!
skip: count
	count timesRepeat: [ self next ]! !
