
!PluggableMorphListMorph methodsFor: 'as yet unclassified'!
basicKeyPressed: aChar

	| oldSelection nextSelection max milliSeconds nextSelectionList nextSelectionText s|
	nextSelection := oldSelection := self getCurrentSelectionIndex.
	
	self searchedElement: nil.
	
	max := self maximumSelection.
	milliSeconds := Time millisecondClockValue.
	milliSeconds - lastKeystrokeTime > 500 ifTrue: ["just use the one current character for selecting"
		lastKeystrokes := ''].
	lastKeystrokes := lastKeystrokes , aChar asLowercase asString.
	lastKeystrokeTime := milliSeconds.
	list := self getList.
	nextSelectionList := OrderedCollection newFrom: (list copyFrom: oldSelection + 1 to: max).
	nextSelectionList addAll: (list copyFrom: 1 to: oldSelection).
	"Get rid of blanks and style used in some lists"
	nextSelectionText := nextSelectionList detect: [:a |
		s := a userString ifNil: [(a submorphs collect: [:m | m userString]) detect: [:us | us notNil] ifNone: ['']].
		s trimBoth asLowercase beginsWith: lastKeystrokes]
				ifNone: [^ self flash"match not found"].
	model okToChange ifFalse: [^ self].
	nextSelection := list findFirst: [:a |
		s := a userString ifNil: [(a submorphs collect: [:m | m userString]) detect: [:us | us notNil] ifNone: ['']].
		a == nextSelectionText].
	"No change if model is locked"
	oldSelection == nextSelection ifTrue: [^ self flash].
	
	self searchedElement: nextSelection.! !
