
Morph subclass: #MatrixTransformMorph
	uses: TAbleToRotate
	instanceVariableNames: 'transform'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Morphic-Balloon'!

!MatrixTransformMorph commentStamp: '<historical>' prior: 0!
MatrixTransformMorph is similar to TransformMorph but uses a MatrixTransform2x3 instead of a MorphicTransform. It is used by clients who want use the BalloonEngine for vector-based scaling instead of the standard WarpBlt pixel-based mechanism.!
