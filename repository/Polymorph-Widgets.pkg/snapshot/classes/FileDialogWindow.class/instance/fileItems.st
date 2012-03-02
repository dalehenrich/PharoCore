
!FileDialogWindow methodsFor: 'as yet unclassified'!
fileItems
	"Answer the items for the contents of the selected directory."

	^Cursor wait showWhile: [
		self files collect: [:de |
			(self newRow: {
				ImageMorph new newForm: (self iconFor: de).
				StringMorph contents: de name font: self theme listFont})
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				fullBounds;
				hResizing: #rigid;
				vResizing: #rigid;
				changeNoLayout]]! !
