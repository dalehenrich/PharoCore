
!TimeStampTest methodsFor: 'testing'!
testPlusSecondsOverMidnight
			
	| dAndt |
	dAndt := (aTimeStamp plusSeconds: 24 * 60 * 60 + 1) dateAndTime.
	self assert: dAndt first asString =  '01-03-2004' asDate asString.
	self assert: dAndt second asString =  '00:34:57' asTime asString! !
