
!MessageNames methodsFor: 'search'!
doSearchFrom: aTextMorph
	"The user hit the Search button -- treat it as a synonym for the user having hit the Return or Enter (or cmd-s) in the type-in pane"

	aTextMorph
		accept;
		changed! !
