
!TabSelectorMorph methodsFor: 'as yet unclassified'!
updateTabs
	"Update the submorphs based on visible tabs."

	|tabsAndControls|
	tabsAndControls := self tabsAndControls.
	self removeAllMorphs.
	tabsAndControls ifEmpty: [^self].
	self
		addAllMorphs: self tabsAndControls;
		adoptPaneColor! !
