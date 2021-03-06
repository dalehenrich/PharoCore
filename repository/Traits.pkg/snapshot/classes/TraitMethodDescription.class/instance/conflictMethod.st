
!TraitMethodDescription methodsFor: 'accessing'!
conflictMethod
	| method argumentNames binary numberOfArguments |
	self isConflict ifFalse: [^nil].
	argumentNames := self getArgumentNames.
	binary := self isBinarySelector.
	numberOfArguments := binary
		ifTrue: [1]
		ifFalse: [argumentNames size + 2].
	^self
		generateMethod: self selector
		withMarker: CompiledMethod conflictMarker
		forArgs: argumentNames size
		binary: binary! !
