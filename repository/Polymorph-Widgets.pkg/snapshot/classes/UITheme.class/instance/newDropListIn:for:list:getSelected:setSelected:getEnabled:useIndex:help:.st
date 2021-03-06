
!UITheme methodsFor: 'morph creation'!
newDropListIn: aThemedMorph for: aModel list: listSel getSelected: getSel setSelected: setSel getEnabled: enabledSel useIndex: useIndex help: helpText
	"Answer a drop list for the given model."

	^(DropListMorph
			on: aModel
			list: listSel
			selected: getSel
			changeSelected: setSel
			useIndex: useIndex)
		selectionColor: self selectionColor;
		getEnabledSelector: enabledSel;
		font: self dropListFont;
		cornerStyle: aThemedMorph preferredCornerStyle;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		setBalloonText: helpText! !
