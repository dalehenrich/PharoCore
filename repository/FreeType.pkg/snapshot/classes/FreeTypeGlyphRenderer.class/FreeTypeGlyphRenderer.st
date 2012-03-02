
Object subclass: #FreeTypeGlyphRenderer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: 'FT2Constants'
	category: 'FreeType-GlyphRendering'!

FreeTypeGlyphRenderer class
	instanceVariableNames: 'current'!

!FreeTypeGlyphRenderer commentStamp: 'tween 4/4/2007 09:48' prior: 0!
This class produces glyphs for a FreeTypeFont.
It can be subclassed to provide, for example, sub-pixel anti-aliased glyphs.!
