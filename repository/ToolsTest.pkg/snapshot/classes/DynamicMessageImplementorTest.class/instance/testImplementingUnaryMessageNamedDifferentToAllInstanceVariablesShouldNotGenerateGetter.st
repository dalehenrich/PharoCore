
!DynamicMessageImplementorTest methodsFor: 'testing'!
testImplementingUnaryMessageNamedDifferentToAllInstanceVariablesShouldNotGenerateGetter

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1 self shouldBeImplemented.' withSeparatorsCompacted! !
