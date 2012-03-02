
!MessageNames methodsFor: 'search'!
searchString: aString from: aTextMorph
	"Take what the user typed and find all selectors containing it"

	aTextMorph selectAll.
	searchString := aString asString copyWithout: $ .
	self containingWindow ifNotNil: [ :w | w setLabel: ('Message names containing "{1}"' translated format: {searchString asLowercase}) ].
	selectorList := nil.
	self changed: #selectorList.
	self changed: #messageList.
	^true! !
