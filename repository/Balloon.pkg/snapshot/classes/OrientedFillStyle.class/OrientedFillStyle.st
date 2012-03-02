
FillStyle subclass: #OrientedFillStyle
	instanceVariableNames: 'origin direction normal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Balloon-Fills'!

!OrientedFillStyle commentStamp: '<historical>' prior: 0!
OrientedFill is an abstract superclass for fills which can be aligned appropriately.

Instance variables:
	origin	<Point>	The point at which to align the fill.
	direction <Point>	The direction in which the fill is defined
	normal	<Point>	Typically, just the direction rotated by 90 degrees.!
