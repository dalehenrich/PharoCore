
!DateAndTime methodsFor: 'converting'!
asDosTime
	"answer number of seconds since Dos epoch (midnight Jan 1, 1980, UTC)"
	^((self offset: Duration zero) - self class dosEpoch) asSeconds! !
