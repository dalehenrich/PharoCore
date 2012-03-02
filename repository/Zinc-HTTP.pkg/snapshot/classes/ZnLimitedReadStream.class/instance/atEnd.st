
!ZnLimitedReadStream methodsFor: 'testing'!
atEnd
	^ position >= limit or: [ stream atEnd ]! !
