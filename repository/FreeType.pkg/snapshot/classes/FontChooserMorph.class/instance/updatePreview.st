
!FontChooserMorph methodsFor: 'actions'!
updatePreview

	Cursor wait showWhile: 
		[ self fontPreviewPanel
			scrollTarget: self newFontPreviewInnerPanel ]! !
