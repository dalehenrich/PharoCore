
!HelpBrowser methodsFor: 'events'!
onItemClicked: anItem
	anItem isNil ifTrue: [^contentMorph setText: rootTopic asHelpTopic contents].
	contentMorph setText: anItem contents! !
