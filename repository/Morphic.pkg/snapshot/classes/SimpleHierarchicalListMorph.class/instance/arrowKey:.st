
!SimpleHierarchicalListMorph methodsFor: 'keyboard navigation'!
arrowKey: aChar
	"Handle a keyboard navigation character. Answer true if handled, false if not."
	| keyEvent |
	keyEvent := aChar asciiValue.
     keyEvent = 31 ifTrue:["down"
		self setSelectionIndex: self getSelectionIndex+1.
		^true].
     keyEvent = 30 ifTrue:["up"
		self setSelectionIndex: (self getSelectionIndex-1 max: 1).
		^true].
     keyEvent = 1  ifTrue: ["home"
		self setSelectionIndex: 1.
		^true].
     keyEvent = 4  ifTrue: ["end"
		self setSelectionIndex: scroller submorphs size.
		^true].
      keyEvent = 11 ifTrue: ["page up"
		self setSelectionIndex: (self getSelectionIndex - self numSelectionsInView max: 1).
		^true].
     keyEvent = 12  ifTrue: ["page down"
		self setSelectionIndex: self getSelectionIndex + self numSelectionsInView.
		^true].
	keyEvent = 29 ifTrue:["right"
		selectedMorph ifNotNil:[
			(selectedMorph canExpand and:[selectedMorph isExpanded not])
				ifTrue:[self toggleExpandedState: selectedMorph]
				ifFalse:[self setSelectionIndex: self getSelectionIndex+1].
		].
		^true].
	keyEvent = 28 ifTrue:["left"
		selectedMorph ifNotNil:[
			(selectedMorph isExpanded)
				ifTrue:[self toggleExpandedState: selectedMorph]
				ifFalse:[self setSelectionIndex: (self getSelectionIndex-1 max: 1)].
		].
		^true].
	^false! !
