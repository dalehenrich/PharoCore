
!Behavior methodsFor: 'accessing'!
typeOfClass
	"Answer a symbol uniquely describing the type of the receiver"
	self instSpec = CompiledMethod instSpec ifTrue:[^#compiledMethod]. "Very special!!"
	self isBytes ifTrue:[^#bytes].
	(self isWords and:[self isPointers not]) ifTrue:[^#words].
	self isWeak ifTrue:[^#weak].
	self isVariable ifTrue:[^#variable].
	^#normal.! !
