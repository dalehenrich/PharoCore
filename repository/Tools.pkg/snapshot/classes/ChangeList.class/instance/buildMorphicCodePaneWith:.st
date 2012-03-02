
!ChangeList methodsFor: 'menu actions'!
buildMorphicCodePaneWith: editString

	| codePane |
	codePane := (AcceptableCleanTextMorph
		on: self
		text: #contents 
		accept: #contents:
		readSelection: #contentsSelection 
		menu: #codePaneMenu:shifted:).
	codePane font: StandardFonts codeFont.
	editString ifNotNil: [
		codePane editString: editString.
		codePane hasUnacceptedEdits: true ].
	^codePane
! !
