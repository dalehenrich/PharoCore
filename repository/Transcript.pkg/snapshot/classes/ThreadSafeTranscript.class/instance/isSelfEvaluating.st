
!ThreadSafeTranscript methodsFor: 'printing'!
isSelfEvaluating

	self == Transcript ifTrue: [^true].
	^super isSelfEvaluating! !
