
!FinderMethodNode methodsFor: 'accessing'!
childrenItems
	"I search the children, if I have not got any, I call my super method"

	self model currentSearchMode = #Pragmas
		ifTrue: [ ^  (self model resultDictionary at: parentNode item ifAbsent:[^super childrenItems]) at: self item ifAbsent: [ ^ super childrenItems]].
	^ (self model resultDictionary at: self item ifAbsent:[^super childrenItems])! !
