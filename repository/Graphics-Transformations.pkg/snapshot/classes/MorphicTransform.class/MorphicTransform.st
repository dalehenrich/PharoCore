
DisplayTransform subclass: #MorphicTransform
	instanceVariableNames: 'offset angle scale'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Graphics-Transformations'!

!MorphicTransform commentStamp: '<historical>' prior: 0!
This class implements simple translation, scaling and rotation for points, as well as inverse transformations.  These transformations are used in TransformMorphs (clipping scrollers) and TransformationMorphs (general flex-morph wrappers) to map, eg, global mouse coords into local coords, and to invert, eg, local damage rectangles into global damage rectangles.!
