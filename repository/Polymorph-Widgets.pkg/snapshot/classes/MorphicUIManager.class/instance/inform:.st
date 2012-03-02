
!MorphicUIManager methodsFor: 'ui requests'!
inform: aStringOrText
	"Display a message for the user to read and then dismiss."
	
	(ProvideAnswerNotification signal: aStringOrText) ifNotNil: [:answer |
		^true].
	^ self theme 
		messageIn: self modalMorph
		text: aStringOrText
		title: 'Information' translated! !
