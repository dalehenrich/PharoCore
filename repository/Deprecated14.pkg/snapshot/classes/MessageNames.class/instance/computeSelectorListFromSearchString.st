
!MessageNames methodsFor: 'search'!
computeSelectorListFromSearchString
	"Compute selector list from search string"
	
	self searchString: (searchString asString copyWithout: Character arrowUp).
	selectorList := Cursor wait showWhile: [
					(SystemNavigation default allImplementedMessages select: [:each | each  includesSubstring: searchString caseSensitive: false]) asArray sort: [:x :y | x asLowercase <= y asLowercase]].
	^ selectorList! !
