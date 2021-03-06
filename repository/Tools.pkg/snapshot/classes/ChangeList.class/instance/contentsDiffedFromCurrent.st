
!ChangeList methodsFor: 'viewing access'!
contentsDiffedFromCurrent
	"Answer the contents diffed forward from current (in-memory) method version"

	| aChange aClass |
	listIndex = 0
		ifTrue: [^ ''].
	aChange := changeList at: listIndex.
	 (aChange type == #method
	 and: [(aClass := aChange methodClass) notNil
	 and: [aClass includesSelector: aChange methodSelector]]) ifTrue:
		[^TextDiffBuilder
			buildDisplayPatchFrom: (aClass sourceCodeAt: aChange methodSelector)
			to: aChange text
			inClass: aClass
			prettyDiffs: self showingPrettyDiffs].

	aChange type == #doIt ifTrue:
		[| tokens |
		 tokens := Scanner new scanTokens: aChange string.
		 ((tokens select:
				[:substr| #(subclass: variableByteSubclass: variableWordSubclass:
							instanceVariableNames: classVariableNames: ) includes: substr])
					asSet size >= 3
		  and: [(aClass := Smalltalk globals at: tokens third ifAbsent: []) notNil
		  and: [aClass isBehavior]]) ifTrue:
			[^TextDiffBuilder buildDisplayPatchFrom: aClass definition to: aChange string].

		(tokens size = 4
		 and: [tokens second == #class
		 and: [tokens third == #instanceVariableNames:
		 and: [(aClass := Smalltalk globals at: tokens first ifAbsent: []) notNil
		 and: [aClass isBehavior]]]]) ifTrue:
			[^TextDiffBuilder buildDisplayPatchFrom: aClass class definition to: aChange string]].

	(aChange type == #classComment
	and: [(aClass := aChange commentClass) notNil]) ifTrue:
		[^TextDiffBuilder buildDisplayPatchFrom: aClass comment asString to: aChange string].

	^(changeList at: listIndex) text! !
