
!Finder methodsFor: 'accessing'!
currentSearchMode: aSymbol
	"Setter"
	"If #Examples is selected, I disable the RegEx checkbo. Then I rebuild the resultDictionary"

	currentSearchMode := aSymbol.
		aSymbol == #Examples
			ifTrue: [ self disableUseRegEx]
			ifFalse:[ self enableUseRegEx].
	self constructDictionary! !
