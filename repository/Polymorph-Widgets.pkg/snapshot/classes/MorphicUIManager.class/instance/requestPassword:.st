
!MorphicUIManager methodsFor: 'ui requests'!
requestPassword: aStringOrText 
	"Request for a password.
	Allow for interception with a ProvideAnswerNotification handler.
	Answer nil if the user cancels."
	
	(ProvideAnswerNotification signal: aStringOrText) ifNotNil: [:answer |
		^answer == #default ifTrue: [''] ifFalse: [answer]].
	^ self theme
		passwordEntryIn: self modalMorph
		text: aStringOrText
		title: 'Password Required' translated
		entryText: ''! !
