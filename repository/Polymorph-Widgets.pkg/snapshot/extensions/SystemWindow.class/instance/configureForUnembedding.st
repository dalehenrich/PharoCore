
!SystemWindow methodsFor: '*Polymorph-Widgets'!
configureForUnembedding
	"Set up the window so it can be unembedded and placed in the world."

	labelArea owner isNil ifTrue: [
		self
			removeProperty: #processingMouseDown;
			makeBordered;
			initializeLabelArea;
			themeChanged;
			addGrips;
			hasDropShadow: true]! !
