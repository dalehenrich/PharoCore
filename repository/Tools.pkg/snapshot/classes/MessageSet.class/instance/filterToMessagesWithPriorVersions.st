
!MessageSet methodsFor: 'filtering'!
filterToMessagesWithPriorVersions
	"Filter down only to messages which have at least one prior version"

	self filterFrom:
		[:aClass :aSelector |
			(aClass notNil and: [aSelector notNil]) and:
				[(self class isPseudoSelector: aSelector) not and:
					[(Smalltalk tools versionBrowser versionCountForSelector: aSelector class: aClass) > 1]]]! !
