
!TIncludesForIdentityCollectionsTest methodsFor: 'tests - including for identity collections'!
testIncludesAllOfForIdentityCollections
	"self debug: #testIncludesAllOfAllThere'"
	| collection copyCollection |
	collection := self identityCollectionWithElementsCopyNotIdentical .
	copyCollection := OrderedCollection new.
	collection do: [ :each | copyCollection add: each copy ].
	self assert: (collection includesAllOf: collection).
	self deny: (collection includesAllOf: copyCollection).
	self deny: (collection includesAllOf: {  (copyCollection anyOne)  })! !
