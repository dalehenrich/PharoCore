
!DynamicMessageImplementorTest methodsFor: 'testing'!
testAnShouldBeUsedAsPrefixWhenArgumentNameStartsWithVowel

	| messageImplementor sourceCode |		
	
	messageImplementor := DynamicMessageImplementor for: (Message selector: #m1: argument: #()) in: self class.	
	sourceCode := messageImplementor value.	
	self assert: sourceCode withSeparatorsCompacted = 'm1: anArray self shouldBeImplemented.' withSeparatorsCompacted! !
