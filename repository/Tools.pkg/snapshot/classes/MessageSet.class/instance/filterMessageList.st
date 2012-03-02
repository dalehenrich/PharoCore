
!MessageSet methodsFor: 'filtering'!
filterMessageList
	"Allow the user to refine the list of messages."

	| aMenu evt |
	messageList size <= 1 ifTrue: [^ self inform: 'this is not a propitious filtering situation'].

	"would like to get the evt coming in but thwarted by the setInvokingView: circumlocution"
	evt := self currentWorld activeHand lastEvent.
	aMenu := UIManager default newMenuIn: self for: self.
	aMenu addTitle: 'Filter by only showing...'.
	aMenu addStayUpItem.

	aMenu addList: #(
		('Unsent messages'						filterToUnsentMessages		'Filter to show only messages that have no senders')
		-
		('Messages that send...'					filterToSendersOf			'Filter to show only messages that send a selector I specify')
		('Messages that do not send...'			filterToNotSendersOf		'Filter to show only messages that do not send a selector I specify')
		-
		('Messages whose selector is...'			filterToImplementorsOf		'Filter to show only messages with a given selector I specify')
		('Messages whose selector is NOT...'		filterToNotImplementorsOf	'Filter to show only messages whose selector is NOT a seletor I specify')
		-
		('Messages in current change set'		filterToCurrentChangeSet	'Filter to show only messages that are in the current change set')
		('Messages not in current change set'	filterToNotCurrentChangeSet	'Filter to show only messages that are not in the current change set')
		-
		('Messages in any change set'			filterToAnyChangeSet		'Filter to show only messages that occur in at least one change set')
		('Messages not in any change set'		filterToNotAnyChangeSet		'Filter to show only messages that do not occur in any change set in the system')
		-
		('Messages authored by me'				filterToCurrentAuthor		'Filter to show only messages whose authoring stamp has my initials')
		('Messages not authored by me'			filterToNotCurrentAuthor	'Filter to show only messages whose authoring stamp does not have my initials')
		-
		('Messages logged in .changes file'		filterToMessagesInChangesFile	'Filter to show only messages whose latest source code is logged in the .changes file')
		('Messages only in .sources file'			filterToMessagesInSourcesFile	'Filter to show only messages whose latest source code is logged in the .sources file')
		-
		('Messages with prior versions'			filterToMessagesWithPriorVersions	'Filter to show only messages that have at least one prior version')
		('Messages without prior versions'		filterToMessagesWithoutPriorVersions	'Filter to show only messages that have no prior versions')
		-
		('Uncommented messages' filterToUncommentedMethods 'Filter to show only messages that do not have comments at the beginning')
		('Commented messages' filterToCommentedMethods 'Filter to show only messages that have comments at the beginning')
		-
		('Messages that...'						filterToMessagesThat			'Let me type in a block taking a class and a selector, which will specify yea or nay concerning which elements should remain in the list')
			).

	aMenu popUpEvent: evt hand lastEvent in: evt hand world.! !
