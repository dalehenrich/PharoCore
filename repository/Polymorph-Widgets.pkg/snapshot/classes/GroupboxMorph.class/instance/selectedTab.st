
!GroupboxMorph methodsFor: 'as yet unclassified'!
selectedTab
	"Answer the label morph for compatibility with TabPanelBorder."
	
	^self labelMorph owner
		ifNotNil: [self labelMorph]! !
