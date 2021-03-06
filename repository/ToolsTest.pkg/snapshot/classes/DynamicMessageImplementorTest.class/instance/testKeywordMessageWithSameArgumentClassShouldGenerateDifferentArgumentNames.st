
!DynamicMessageImplementorTest methodsFor: 'testing'!
testKeywordMessageWithSameArgumentClassShouldGenerateDifferentArgumentNames

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1:m2:m3: arguments: #(1 2 3)) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1: aSmallInteger m2: aSmallInteger2 m3: aSmallInteger3 self shouldBeImplemented.' withSeparatorsCompacted! !
