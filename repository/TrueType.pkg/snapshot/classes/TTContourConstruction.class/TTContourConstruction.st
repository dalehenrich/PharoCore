
Object subclass: #TTContourConstruction
	instanceVariableNames: 'points'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'TrueType-Support'!

!TTContourConstruction commentStamp: '<historical>' prior: 0!
This class represents a temporary contour structure during the construction of a TTGlyph from a TrueType file.

Instance variables:
	points	<Array of: TTPoint>	The points defining this contour!
