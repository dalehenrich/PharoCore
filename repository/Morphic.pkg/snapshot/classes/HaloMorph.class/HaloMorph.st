
Morph subclass: #HaloMorph
	instanceVariableNames: 'target innerTarget positionOffset angleOffset growingOrRotating directionArrowAnchor haloBox originalExtent nameMorph'
	classVariableNames: 'CurrentHaloSpecifications HaloEnclosesFullBounds HaloWithDebugHandle ShowBoundsInHalo'
	poolDictionaries: ''
	category: 'Morphic-Widgets'!

!HaloMorph commentStamp: '<historical>' prior: 0!
This morph provides a halo of handles for its target morph. Dragging, duplicating, rotating, and resizing to be done by mousing down on the appropriate handle. There are also handles for help and for a menu of infrequently used operations.!
