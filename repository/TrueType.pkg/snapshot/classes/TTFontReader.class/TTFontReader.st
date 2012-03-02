
Object subclass: #TTFontReader
	instanceVariableNames: 'charMap glyphs nGlyphs kernPairs fontDescription'
	classVariableNames: ''
	poolDictionaries: 'TextConstants'
	category: 'TrueType-Support'!

!TTFontReader commentStamp: '<historical>' prior: 0!
TTFontReader constructs a TTFontDescription from a TrueType font (.ttf).!
