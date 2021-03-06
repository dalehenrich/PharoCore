
!MorphicUIManager methodsFor: 'ui requests'!
explorer: anObjectExplorer for: anObject withLabel: label 
	| window listMorph |
	anObjectExplorer rootObject: anObject.
	window := (SystemWindow labelled: label) model: anObjectExplorer.
	window addMorph: (listMorph := SimpleHierarchicalListMorph 
			on: anObjectExplorer
			list: #getList
			selected: #getCurrentSelection
			changeSelected: #noteNewSelection:
			menu: #genericMenu:
			keystroke: #explorerKey:from:)
		frame: (0@0 corner: 1@0.8).
	window addMorph: ((PluggableTextMorph on: anObjectExplorer text: #trash accept: #trash:
				readSelection: #contentsSelection menu: #codePaneMenu:shifted:)
					askBeforeDiscardingEdits: false)
		frame: (0@0.8 corner: 1@1).
	listMorph autoDeselect: false.
     ^ window! !
