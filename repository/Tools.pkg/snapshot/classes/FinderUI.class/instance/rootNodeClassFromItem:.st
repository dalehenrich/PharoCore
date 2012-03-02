
!FinderUI methodsFor: 't - accessing'!
rootNodeClassFromItem: anItem 
	"To have the good class for my nodes, I ask my owner,
	because he is the only one who knows his state"
	^ self 
		forSelectorsDo: [FinderMethodNode]
		forClassNamesDo: [FinderClassNode]
		forSourceDo: [FinderMethodNode]
		forPatternDo: [FinderMethodNode] 
		forPragmasDo: [FinderPragmaNode]! !
