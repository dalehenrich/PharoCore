
!ImageFillStyle methodsFor: 'as yet unclassified'!
= anOrientedFillStyle
	"Answer whether equal."

	^super = anOrientedFillStyle
		and: [self form = anOrientedFillStyle form]! !