
!ColorSelectorDialogWindow methodsFor: 'as yet unclassified'!
hue
	"Answer the hue value of the selected color."

	^(self selectedColor hue / 359 * 255) asInteger! !
