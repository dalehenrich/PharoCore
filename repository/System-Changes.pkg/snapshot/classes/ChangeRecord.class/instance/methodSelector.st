
!ChangeRecord methodsFor: 'access'!
methodSelector
	^ type == #method
		ifTrue: [ (Smalltalk globals at: class ifAbsent: [ Object ]) parserClass new parseSelector: self string ]! !
