
!MessageNames class methodsFor: '*Deprecated14'!
methodBrowserSearchingFor: searchString
	"Answer an method-browser window whose search-string is initially as indicated"

	| aWindow |
	self deprecated: 'issue 4576' on: '14 August, 2011' in: 'Pharo1.4'.
	aWindow := self new inMorphicWindowWithInitialSearchString: searchString.
	aWindow applyModelExtent.
	^ aWindow! !
