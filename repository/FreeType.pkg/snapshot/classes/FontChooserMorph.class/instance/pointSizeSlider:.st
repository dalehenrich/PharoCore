
!FontChooserMorph methodsFor: 'actions'!
pointSizeSlider: aNumber

	(aNumber < 1 or:[ aNumber > 1024])
		ifTrue:[^self].
	pointSizeMorph ifNotNil:[
		pointSizeMorph 
			setText: aNumber asString asText;
			hasUnacceptedEdits: false].
	model pointSize: aNumber! !
