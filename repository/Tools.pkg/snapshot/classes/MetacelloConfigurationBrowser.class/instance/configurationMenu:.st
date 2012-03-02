
!MetacelloConfigurationBrowser methodsFor: 'menu'!
configurationMenu: aMenu
	selectedConfiguration isNil ifTrue: [^aMenu labels: 'Refresh' lines: #() selections: #(refresh)].
	^aMenu labels:
		'Load configuration
		Load configuration and latest version
		Refresh' 
		lines: #(2)
		selections:
		#(loadSelectedConfiguration loadLatestFromSelectedConfiguration refresh)! !
