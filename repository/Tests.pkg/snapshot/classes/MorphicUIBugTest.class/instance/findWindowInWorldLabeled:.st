
!MorphicUIBugTest methodsFor: 'as yet unclassified'!
findWindowInWorldLabeled: aLabel
^ World submorphs detect: [ :each |
	each class == SystemWindow
		and: [ each label = aLabel ] ] ifNone: [ nil ] .! !
