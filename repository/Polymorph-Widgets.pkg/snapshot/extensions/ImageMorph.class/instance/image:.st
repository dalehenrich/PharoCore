
!ImageMorph methodsFor: '*Polymorph-Widgets'!
image: anImage 
	"Fixed to take account of border width.
	Use raw image, only change depth 1 forms to
	ColorForm with transparency if #color: is sent."
	
	image := anImage. 
	super extent: (2 * self borderWidth) asPoint + image extent.
	self changed! !
