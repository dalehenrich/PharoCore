
!MorphicUIManager methodsFor: 'ui requests'!
chooseDirectory: label from: dir
	"Answer the user choice of a directory."
	
	| realLabel |
	realLabel := label ifNil: ['Choose Directory' translated].
	(ProvideAnswerNotification signal: realLabel) ifNotNil: [:answer |
		^answer ].
	^ self theme  
		chooseDirectoryIn: self modalMorph
		title: realLabel
		path: (dir ifNotNil: [dir pathName])! !
