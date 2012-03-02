
!MorphicUIManager methodsFor: 'ui requests'!
confirm: questionStringOrText label: labelStringOrText
	"Put up a question dialog (without cancel).
	Answer true if the response is yes, false if no.
	This is a modal question--the user must respond yes or no."
	
	(ProvideAnswerNotification signal: questionStringOrText) ifNotNil: [:answer |
		^answer].
	^ self theme 
		questionWithoutCancelIn: self modalMorph
		text: questionStringOrText
		title: labelStringOrText.! !
