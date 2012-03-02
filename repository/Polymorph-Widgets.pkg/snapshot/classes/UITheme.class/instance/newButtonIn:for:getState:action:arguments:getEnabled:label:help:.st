
!UITheme methodsFor: 'morph creation'!
newButtonIn: aThemedMorph for: aModel getState: stateSel action: actionSel arguments: args getEnabled: enabledSel label: label help: helpText
	"Answer a new button."

	|b|
	b := PluggableButtonMorph
			on: aModel getState: stateSel action: actionSel.
	b
		arguments: (args ifNil: [{b}]);
		getEnabledSelector: enabledSel;
		cornerStyle: (self buttonCornerStyleIn: aThemedMorph);
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		label: label font: self buttonFont;
		setBalloonText: helpText;
		extent: b minExtent;
		hResizing: #rigid;
		vResizing: #rigid.
	^b! !
