
!MessageSet methodsFor: 'filtering'!
filterToAnyChangeSet
	"Filter down only to messages present in ANY change set"

	self filterFrom:
		[:aClass :aSelector |
			ChangeSet doesAnyChangeSetHaveClass: aClass andSelector: aSelector]
! !
