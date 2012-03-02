
!TraitMethodDescription methodsFor: 'testing'!
isConflict
	| count originMethodReferenciel |
	count := 0.

	self locatedMethods size > 1
		ifTrue: 
			["If they are more than 1 located method, then check whether these methods have the same origin"
			originMethodReferenciel := self locatedMethods anyOne method origin.
			((self locatedMethods collect: [:lm | lm method]) allSatisfy: [:each | each method origin == originMethodReferenciel])
				ifTrue: [ ^ false ]].

	self methodsDo: [:each |
		each isProvided ifTrue: [
			count := count + 1.
			count > 1 ifTrue: [^true]]].
	^false! !
