
!TimeStampTest methodsFor: 'Running'!
setUp

	timestamp := self timestampClass date: ('1-10-2000' asDate) time: ('11:55:00 am' asTime).

	aTimeStamp := TimeStamp readFrom: '1-02-2004 12:34:56 am' readStream! !
