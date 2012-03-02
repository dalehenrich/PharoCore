
!MorphicUIManager methodsFor: 'ui requests'!
chooseFileMatching: patterns label: label
	"Let the user choose a file matching the given patterns"
	
	^ self theme
		chooseFileNameIn: self modalMorph
		title: (label ifNil: ['Choose File' translated])
		patterns: patterns
		path: nil
		preview: false! !
