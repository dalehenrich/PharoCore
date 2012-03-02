
!FT2Face methodsFor: 'accessing'!
glyph
	glyph ifNil: [ glyph := FT2GlyphSlot fromFace: self ].
	^glyph! !
