
!PlainGroupboxMorph methodsFor: 'as yet unclassified'!
paneColorOrNil
	"Answer the window's pane color or nil otherwise."

	^super paneColorOrNil ifNotNil: [:c | self theme subgroupColorFrom: c]! !
