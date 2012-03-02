
!UITheme methodsFor: 'morph creation'!
newRadioButtonIn: aThemedMorph for: aModel getSelected: getSel setSelected: setSel getEnabled: enabledSel label: label help: helpText
	"Answer a checkbox (radio button appearance) with the given label ."

	^(CheckboxMorph
			on: aModel selected: getSel changeSelected: setSel)
		getEnabledSelector: enabledSel;
		font: self labelFont;
		label: label;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setBalloonText: helpText;
		beRadioButton! !
