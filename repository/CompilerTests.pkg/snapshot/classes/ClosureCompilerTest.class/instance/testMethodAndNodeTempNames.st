
!ClosureCompilerTest methodsFor: 'tests'!
testMethodAndNodeTempNames
	"self new testMethodAndNodeTempNames"
	"Test that BytecodeAgnosticMethodNode>>blockExtentsToTempRefs answers the same
	 structure as CompiledMethod>>blockExtentsToTempRefs when the method has been
	 copied with the appropriate temps.  This tests whether doit methods are debuggable
	 since they carry their own temps."
	self closureCases do:
		[:source| | mn om m mbe obe |
		mn := source first isLetter
					ifTrue:
						[self class compilerClass new
							compile: source
							in: self class
							notifying: nil
							ifFail: [self error: 'compilation error']]
					ifFalse:
						[self class compilerClass new
							compileNoPattern: source
							in: self class
							context: nil
							notifying: nil
							ifFail: [self error: 'compilation error']].
		m := (om := mn generate) copyWithTempsFromMethodNode: mn.
		self assert: m holdsTempNames.
		self assert: m endPC = om endPC.
		mbe := m blockExtentsToTempsMap.
		obe := mn blockExtentsToTempsMap.
		self assert: mbe keys asSet = obe keys asSet.
		(mbe keys intersection: obe keys) do:
			[:interval|
			self assert: (mbe at: interval) = (obe at: interval)]]! !
