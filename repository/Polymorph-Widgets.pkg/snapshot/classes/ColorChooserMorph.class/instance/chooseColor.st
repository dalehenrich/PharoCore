
!ColorChooserMorph methodsFor: 'as yet unclassified'!
chooseColor
	"Popup the color picker for now."

	|newColor|
	newColor := self theme
		chooseColorIn: ((self ownerThatIsA: SystemWindow) ifNil: [self])
		title: 'Choose Color'
		color: self labelMorph color.
	newColor ifNil: [^self].
	self labelMorph color: newColor.
	self solidLabelMorph color: newColor asNontranslucentColor.
	self setColorSelector ifNotNil: [self model perform: self setColorSelector with: newColor]! !
