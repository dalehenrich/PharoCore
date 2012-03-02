
!SearchMorph methodsFor: 'as yet unclassified'!
showList
	"trigger a list update so that shared search results are updated properly"
	self changed: #list.
	super showList.! !
