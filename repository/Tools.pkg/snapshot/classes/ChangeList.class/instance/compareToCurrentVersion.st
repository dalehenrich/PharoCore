
!ChangeList methodsFor: 'menu actions'!
compareToCurrentVersion
	"If the current selection corresponds to a method in the system, then spawn a window showing the diffs as text"

	| change class s1 s2 |
	listIndex = 0 ifTrue: [^ self].
	change := changeList at: listIndex.
	((class := change methodClass) notNil
			and: [ class includesSelector: change methodSelector])
		ifTrue: [ s1 := (class sourceCodeAt: change methodSelector) asString.
			s2 := change string.
			s1 = s2
				ifTrue: [ self inform: 'Exact Match']
				ifFalse: [ UIManager default
					openComparisonFrom: s2
					to: s1
					belongingTo: class
					from: change
					labeled: (class compiledMethodAt: change methodSelector) timeStamp 
					inWindowLabeled: 'Comparison to Current Version' ]]					
		ifFalse: [self flash]! !
