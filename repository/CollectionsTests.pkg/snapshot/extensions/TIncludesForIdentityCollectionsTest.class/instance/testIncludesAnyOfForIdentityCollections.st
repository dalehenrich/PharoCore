
!TIncludesForIdentityCollectionsTest methodsFor: 'tests - including for identity collections'!
testIncludesAnyOfForIdentityCollections
	"self debug: #testIncludesAnyOfAllThere'"
	| collection copyCollection |
	collection := self identityCollectionWithElementsCopyNotIdentical .
	copyCollection := OrderedCollection new.
	collection do: [ :each | copyCollection add: each copy ].
	self deny: (collection includesAnyOf: copyCollection).
	self assert: (collection includesAnyOf: {  (collection anyOne)  })! !
