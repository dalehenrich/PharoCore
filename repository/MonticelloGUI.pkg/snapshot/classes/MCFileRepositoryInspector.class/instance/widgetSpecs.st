
!MCFileRepositoryInspector methodsFor: 'morphic ui'!
widgetSpecs
	^#(	((buttonRow)          (0 0 1 0)     (0 0 0 30))
		
		((packageSearchField) (0 0 0.5 0)   (0 30 0 60))
		((listMorph: package) (0 0 0.5 0.6) (0 60 0 0))
		
		((versionSearchField) (0.5 0 1 0.0) (0 30 0 60))
		((listMorph: version) (0.5 0 1 0.6) (0 60 0 0))
		
		((textMorph: summary) (0 0.6 1 1)   (0 0 0 0)))! !
