
!TimeProfiler methodsFor: 'as yet unclassified'!
compile: codeString for: anObject in: evalContext

	| methodNode |
	methodNode := [Compiler new
		compileNoPattern: ('self runBlock: [', codeString, ']')
		in: anObject class
		context: evalContext
		notifying: self
		ifFail: [^nil]]
			on: OutOfScopeNotification
			do: [:ex | ex resume: true].

	^ methodNode generateWithTempNames.! !
