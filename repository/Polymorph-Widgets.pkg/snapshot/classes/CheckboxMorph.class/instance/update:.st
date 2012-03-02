
!CheckboxMorph methodsFor: 'updating'!
update: aSymbol 
	"Refer to the comment in View|update:."

	aSymbol == self getStateSelector ifTrue: 
		[self updateSelection.
		^ self].
	aSymbol == self getEnabledSelector ifTrue:
		[self updateEnabled.
		^ self]! !
