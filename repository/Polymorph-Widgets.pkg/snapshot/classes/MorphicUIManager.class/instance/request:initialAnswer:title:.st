
!MorphicUIManager methodsFor: 'ui requests'!
request: aStringOrText initialAnswer: defaultAnswer title: aTitle
	"Create an instance of me whose question is queryString with the given 
	initial answer. Answer the string the user accepts.
	The title serves for the window that is opened
	Answer the empty string if the user cancels.
	Allow for interception with a ProvideAnswerNotification handler."
	
	(ProvideAnswerNotification signal: aStringOrText) ifNotNil: [:answer |
		^answer == #default ifTrue: [defaultAnswer] ifFalse: [answer]].
	^( self theme 
		textEntryIn: self modalMorph
		text: aStringOrText
		title: aTitle
		entryText: defaultAnswer)! !
