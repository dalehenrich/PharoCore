
Object subclass: #LayoutFrame
	instanceVariableNames: 'leftFraction leftOffset topFraction topOffset rightFraction rightOffset bottomFraction bottomOffset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Layouts'!

!LayoutFrame commentStamp: '<historical>' prior: 0!
I define a frame for positioning some morph in a proportional layout.

Instance variables:
	leftFraction 
	topFraction 
	rightFraction 
	bottomFraction 	<Float>		The fractional distance (between 0 and 1) to place the morph in its owner's bounds
	leftOffset 
	topOffset 
	rightOffset 
	bottomOffset 	<Integer>	Fixed pixel offset to apply after fractional positioning (e.g., "10 pixel right of the center of the owner")!
