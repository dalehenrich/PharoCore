
!TabGroupMorph methodsFor: 'as yet unclassified'!
newContentMorph
	"Answer a new content morph"

	|p|
	p := PanelMorph new
		roundedCorners: #(2 3 4);
		changeTableLayout; 
		layoutInset: (4@4 corner: 4@4);
		cellInset: 8;
		vResizing: #spaceFill;
		hResizing: #spaceFill.
	p borderStyle: (self theme tabPanelBorderStyleFor: self).
	^p! !
