
!TimeStampTest methodsFor: 'testing'!
testMinusSecondsOverMidnight
	
	| dAndt |
	dAndt := (aTimeStamp minusSeconds: 34 * 60 + 57) dateAndTime.
	self assert: dAndt first asString =  '01-01-2004' asDate asString.
	self assert: dAndt second asString =  '23:59:59' asTime asString
	"Bug The results are actual results are: #(1 January 2005 11:25:03 pm)"! !
