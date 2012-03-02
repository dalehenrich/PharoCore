
!SourceReference methodsFor: 'accessing'!
timeStampString 
	^ timeStampString ifNil:[timeStampString := self findTimestampInSource]! !
