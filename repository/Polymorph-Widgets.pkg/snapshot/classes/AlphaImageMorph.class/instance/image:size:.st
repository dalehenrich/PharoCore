
!AlphaImageMorph methodsFor: 'accessing'!
image: aForm size: aPoint
	"Set the image to be the form scaled to the given size and padded if neccesary."

	|f f2|
	f := aForm scaledToSize: aPoint.
	(f depth < 32 and: [f depth > 4])
		ifTrue: [f2 := Form extent: aPoint depth: 32.
				f2 fillColor: (Color white alpha: 0.003922).
				f2 getCanvas translucentImage: f at: 0@0.
				f2 fixAlpha]
		ifFalse: [f2 := f].
	self autoSize
		ifTrue: [super image: f2]
		ifFalse: [image := f2.
				self changed].
	self cachedForm: nil.
	self changed: #imageExtent! !
