
!StrikeFont methodsFor: 'building'!
setGlyphsDepthAtMost: aNumber 
	glyphs depth > aNumber ifTrue: [ glyphs := glyphs asFormOfDepth: aNumber ]! !
