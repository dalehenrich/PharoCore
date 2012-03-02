
!ExpanderMorph methodsFor: 'as yet unclassified'!
update: aspect
	"Update the receiver."

	aspect = #expanded
		ifTrue: [self vResizing: (self expanded
					ifTrue: [#spaceFill]
					ifFalse: [#shrinkWrap]).
				self showMorphs: self expanded.
				self fixLayout.
				self expanded
					ifTrue: [self announce: (ExpanderMorphExpanded on: self)]
					ifFalse: [self announce: (ExpanderMorphContracted on: self)]]! !
