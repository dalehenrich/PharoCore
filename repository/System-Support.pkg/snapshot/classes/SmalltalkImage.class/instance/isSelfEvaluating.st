
!SmalltalkImage methodsFor: 'printing'!
isSelfEvaluating
	self == Smalltalk ifTrue: [^true].
	^super isSelfEvaluating! !
