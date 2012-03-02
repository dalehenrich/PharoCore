
!MorphicUIManager methodsFor: 'ui requests'!
chooseFullFileNameMatching: patterns label: label
	"Let the user choose a file matching the given patterns"
	
	^ self theme
		chooseFullFileNameIn: self modalMorph
		title: (label ifNil: ['Choose File' translated])
		patterns: patterns
		path: nil
		preview: false! !
