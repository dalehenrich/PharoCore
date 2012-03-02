
!FlatMessageListBrowser class methodsFor: 'compatibility with stringHolder'!
isPseudoSelector: aSelector
	"Answer whether the given selector is a special marker"
	self flag: #toRemoveWhenStringHolderIsGone.
	^ #(Comment Definition Hierarchy) includes: aSelector! !
