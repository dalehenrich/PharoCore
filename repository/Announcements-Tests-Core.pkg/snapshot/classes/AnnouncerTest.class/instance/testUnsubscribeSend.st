
!AnnouncerTest methodsFor: 'testing'!
testUnsubscribeSend
	| announcement receiver |
	announcer
		subscribe: AnnouncementMockA
		send: #value:
		to: (receiver := [ :ann | announcement := ann ]).
	announcer
		unsubscribe: receiver.

	announcement := nil.
	announcer announce: AnnouncementMockA new.
	self assert: announcement isNil! !
