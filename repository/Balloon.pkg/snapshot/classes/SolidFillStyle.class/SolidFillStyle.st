
FillStyle subclass: #SolidFillStyle
	instanceVariableNames: 'color pixelValue32'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Fills'!

!SolidFillStyle commentStamp: '<historical>' prior: 0!
SolidFillStyle is a fill which represents a color for the BalloonEngine.

Instance variables:
	color	<Color>	The color to use.
	pixelValue32 <Integer>	The cached pixel value to use.!
