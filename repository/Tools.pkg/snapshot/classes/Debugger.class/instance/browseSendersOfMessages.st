
!Debugger methodsFor: 'context stack menu'!
browseSendersOfMessages
	"Present a menu of the currently selected message, as well as all
	messages sent by it.  Open a message set browser of all implementors
	of the message chosen."

	contextStackIndex = 0 ifTrue: [^ self].
	super browseSendersOfMessages! !
