
!MessageList methodsFor: 'actions'!
addFirstVersion

	| systemVersion date association |
	systemVersion := SystemVersion new date: '1 January 1901'.
	date := TimeStamp new.
	association := Association key: systemVersion value: date.
	self versionsHistoryList add: association.! !
