
!PasteUpMorph methodsFor: '*Polymorph-Widgets'!
visibleSystemWindows
	"Answer the visible system windows in the world."
	
	^self submorphsSatisfying: [:m | m isSystemWindow and: [m visible]]! !
