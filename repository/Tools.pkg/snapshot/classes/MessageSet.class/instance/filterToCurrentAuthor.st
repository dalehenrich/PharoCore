
!MessageSet methodsFor: 'filtering'!
filterToCurrentAuthor
	"Filter down only to messages with my full name as most recent author"

	| myFullName |
	(myFullName := Author fullNamePerSe) ifNil: [^ self inform: 'No author full name set in this image'].
	self filterFrom:
		[:aClass :aSelector | | aMethod aTimeStamp |
			(aClass notNil and: [aSelector notNil]) and:			
				[aMethod := aClass compiledMethodAt: aSelector ifAbsent: [nil].
				aMethod notNil and:
					[(aTimeStamp := aMethod timeStamp) notNil and:
						[aTimeStamp beginsWith: myFullName]]]]! !
