
!PluggableTextMorph methodsFor: 'editor access'!
selectAll
	"Tell my textMorph's editor to select all"

	textMorph editor selectAll.
	selectionInterval := self textMorph editor selectionInterval! !
