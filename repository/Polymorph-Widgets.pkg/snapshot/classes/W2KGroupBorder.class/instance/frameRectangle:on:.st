
!W2KGroupBorder methodsFor: 'drawing'!
frameRectangle: aRectangle on: aCanvas

	aCanvas frameRectangle: (aRectangle insetOriginBy: (0@0) cornerBy: (0@0)) color: Color white.
	aCanvas frameRectangle: (aRectangle insetOriginBy: (1@1) cornerBy: (0@0)) color: Color white.
	aCanvas frameRectangle: (aRectangle insetOriginBy: (0@0) cornerBy: (1@1)) color: Color gray.! !
