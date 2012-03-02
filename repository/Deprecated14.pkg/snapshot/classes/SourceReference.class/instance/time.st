
!SourceReference methodsFor: 'accessing'!
time
	"I'm actually the real accessor to timestamp as a TimeStamp"
	
	^ timeStamp ifNil:[timeStamp := self parseTimestampFrom: self timeStampString]! !
