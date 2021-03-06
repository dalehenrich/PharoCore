
!HaloMorph methodsFor: 'private'!
addNameBeneath: outerRectangle string: aString
	"Add a name display centered beneath the bottom of the outer rectangle. Return the handle."

	| namePosition w |
	w := self world ifNil:[target world].
	nameMorph := NameStringInHalo contents: aString font: StandardFonts haloFont.
	nameMorph wantsYellowButtonMenu: false.
	nameMorph color: Color black.
	nameMorph useStringFormat; target: innerTarget; putSelector: #renameTo:.
	namePosition := outerRectangle bottomCenter -
		((nameMorph width // 2) @ (self handleSize negated // 2 - 1)).
	nameMorph position: (namePosition min: w viewBox bottomRight - nameMorph extent y + 2).
	self addMorph: nameMorph.
	^ nameMorph! !
