
!SettingBrowser methodsFor: 'updating'!
changeSearchedText: aString 
	self searchedText: aString.
	self applyFilters.
	^ true ! !
