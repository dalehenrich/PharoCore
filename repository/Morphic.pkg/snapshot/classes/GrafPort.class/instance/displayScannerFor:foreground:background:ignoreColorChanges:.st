
!GrafPort methodsFor: 'accessing'!
displayScannerFor: para foreground: foreColor background: backColor ignoreColorChanges: shadowMode
	^ (MultiDisplayScanner new text: para text textStyle: para textStyle
			foreground: foreColor background: backColor fillBlt: self
			ignoreColorChanges: shadowMode)
		setPort: self shallowCopy! !
