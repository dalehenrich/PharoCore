
!DynamicMessageImplementorTest methodsFor: 'testing'!
testImplementingAMessageNamedAsVariableShouldGenerateGetter

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #instVar) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'instVar self shouldBeImplemented.	^ instVar' withSeparatorsCompacted! !
