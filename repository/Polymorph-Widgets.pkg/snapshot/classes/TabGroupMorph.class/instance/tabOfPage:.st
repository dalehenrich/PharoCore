
!TabGroupMorph methodsFor: 'as yet unclassified'!
tabOfPage: aMorph
	"Answer the tab associated with the given page."

	^self tabSelectorMorph tabs at: (self pages indexOf: aMorph)! !
