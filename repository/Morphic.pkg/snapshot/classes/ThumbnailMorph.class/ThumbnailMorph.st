
RectangleMorph subclass: #ThumbnailMorph
	instanceVariableNames: 'objectToView viewSelector lastSketchForm lastFormShown drawTime'
	classVariableNames: 'EccentricityThreshhold RecursionDepth RecursionMax'
	poolDictionaries: ''
	category: 'Morphic-Basic'!

!ThumbnailMorph commentStamp: 'sw 1/6/2005 03:47' prior: 0!
A Morph that views another morph, its objectToView.!
