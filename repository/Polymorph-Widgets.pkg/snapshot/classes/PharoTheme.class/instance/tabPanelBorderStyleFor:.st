
!PharoTheme methodsFor: 'border-styles'!
tabPanelBorderStyleFor: aTabGroup
	^ ExtendedTabPanelBorder new 
		width: 1;
		baseColor: ((self glamorousDarkBaseColorFor: aTabGroup));
		tabSelector: aTabGroup tabSelectorMorph! !
