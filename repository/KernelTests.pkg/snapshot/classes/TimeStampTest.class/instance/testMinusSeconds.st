
!TimeStampTest methodsFor: 'testing'!
testMinusSeconds

	| dAndt |
	dAndt := (aTimeStamp minusSeconds: 34 * 60 + 56) dateAndTime.
	self assert: dAndt first asString =  '01-02-2004' asDate asString.
	self assert: dAndt second asString =  '00:00:00' asTime asString! !
