
!FontChooserMorph methodsFor: 'accessing'!
fontPreviewPanel 
	^fontPreviewPanel ifNil:
		[ fontPreviewPanel := self newScrollPaneFor: self newFontPreviewInnerPanel ]! !
