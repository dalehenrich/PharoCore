
!FlatMessageListBrowser methodsFor: 'announcements'!
methodRemoved: ann
	| ref |
	ref := self getList detect: [:any | (any realClass = ann item methodClass) and: [ any selector = ann item selector ]] ifNone: [ nil ].
	ref ifNotNil: [ | newRef |
			self deleteFromMessageList: ref.
			self updateView]! !
