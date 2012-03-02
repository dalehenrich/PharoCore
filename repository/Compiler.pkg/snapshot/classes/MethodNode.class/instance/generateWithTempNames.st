
!MethodNode methodsFor: 'code generation'!
generateWithTempNames
	"Answer a CompiledMethod with temps names encoded in trailer"
	^self
		generate: (CompiledMethodTrailer new tempNames: self schematicTempNamesString)
		using: CompiledMethod! !
