
Object subclass: #TTGlyph
	instanceVariableNames: 'bounds contours advanceWidth leftSideBearing rightSideBearing glyphIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrueType-Fonts'!

!TTGlyph commentStamp: '<historical>' prior: 0!
This class represents a glyph of a TrueType font.

Instance variables:
	bounds			<Rectangle>	The receiver's bounds
	contours		<Array of: PointArray> The compressed contours in the receiver
	advanceWidth	<Integer>	advance width of the glyph
	leftSideBearing	<Integer>	left side bearing
	rightSideBearing <Integer>	right side bearing
	glyphIndex 		<Integer>	the original index of the glyph (used for kerning)!
