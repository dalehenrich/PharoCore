
!UITheme methodsFor: 'morph creation'!
newCheckboxIn: aThemedMorph for: aModel getSelected: getSel setSelected: setSel getEnabled: enabledSel label: label help: helpText
	"Answer a checkbox with the given label ."

	^(CheckboxMorph
			on: aModel selected: getSel changeSelected: setSel)
		getEnabledSelector: enabledSel;
		font: self labelFont;
		label: label;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setBalloonText: helpText! !
