
Object subclass: #TTFontDescription
	instanceVariableNames: 'glyphTable glyphs kernPairs copyright familyName fullName subfamilyName uniqueName versionName postscriptName trademark bounds unitsPerEm ascender descender lineGap'
	classVariableNames: 'Default Descriptions'
	poolDictionaries: 'TextConstants'
	category: 'TrueType-Fonts'!

!TTFontDescription commentStamp: '<historical>' prior: 0!
Holds a TrueType font in memory.  Is used by TTSampleStringMorph as its font.  

Class owns a default example.  !
