
!Compiler methodsFor: 'private'!
from: textOrStream class: aClass context: aContext notifying: req

	(textOrStream isKindOf: PositionableStream)
		ifTrue: [sourceStream := textOrStream]
		ifFalse: [sourceStream := textOrStream asString readStream].
	class := aClass.
	context := aContext.
	requestor := req! !
