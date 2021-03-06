
!UIThemeW2K methodsFor: 'morph creation'!
newMorphListIn: aThemedMorph for: aModel list: listSelector getSelected: getSelector setSelected: setSelector getEnabled: enabledSel help: helpText
	"Answer a morph list for the given model."

	^(PluggableMorphListMorph
			on: aModel
			list: listSelector
			selected: getSelector
			changeSelected: setSelector
			menu: nil
			keystroke: nil)
		selectionColor: self selectionColor;
		autoDeselect: false;
		cornerStyle: #square;
		color: Color white;
		borderStyle: (BorderStyle inset width: 1; baseColor: Color black);
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		getEnabledSelector: enabledSel;
		setBalloonText: helpText
		! !
