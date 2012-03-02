
!MessageSet methodsFor: 'filtering'!
filterToMessagesWithoutPriorVersions
	"Filter down only to messages which have no prior version stored"

	self filterFrom:
		[:aClass :aSelector |
			(aClass notNil and: [aSelector notNil]) and:
				[(self class isPseudoSelector: aSelector) not and:
					[(Smalltalk tools versionBrowser versionCountForSelector: aSelector class: aClass) <= 1]]]! !
