
!CheckboxMorph methodsFor: 'accessing'!
label: aString
	"Set the contents of the label morph."

	self labelMorph contents: aString.
	self labelMorph: self newLabelMorph! !
