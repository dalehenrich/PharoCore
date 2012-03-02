
!MessageSet methodsFor: 'filtering'!
filterToNotCurrentAuthor
	"Filter down only to messages not stamped with my initials"

	| myFullName |
	(myFullName := Author fullNamePerSe) ifNil: [^ self inform: 'No author full name set in this image'].
	self filterFrom:
		[:aClass :aSelector | | aMethod aTimeStamp |
			(aClass notNil and: [aSelector notNil]) and:			
				[aMethod := aClass compiledMethodAt: aSelector ifAbsent: [nil].
				aMethod notNil and:
					[(aTimeStamp := aMethod timeStamp) isNil or:
						[(aTimeStamp beginsWith: myFullName) not]]]]! !
