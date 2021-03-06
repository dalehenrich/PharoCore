
!OrderedCollectionTest methodsFor: 'setup'!
setUp

	
	nonEmpty := OrderedCollection new  add: self valuePutIn; add: self elementTwiceIn; add: self elementTwiceIn; yourself.
	empty := OrderedCollection new. 
	elementNotIn := 99.
	collectionWith4Elements := OrderedCollection new add: 1; add: -2; add: 3; add: 1; yourself.
	indexArray := { 3. 1.}.
	indexCollection := OrderedCollection new add: 1; add: 2;add: 3; add: 4; add:5;  yourself.
	otherCollection := OrderedCollection new add: 1;add: 20; add: 30; yourself.
	withoutEqualElements := OrderedCollection new add: 1;add: 20; add: 30; yourself.
	collectResult := OrderedCollection new add: SmallInteger; add: SmallInteger; add: SmallInteger; yourself.
	emptyButAllocatedWith20 := OrderedCollection new: 20. 
	collectionWithElement := OrderedCollection new add: self element; yourself.
	collectionOfFloat := OrderedCollection new add: 4.1; add: 7.2; add: 2.5; yourself.
	floatCollectionWithSameBeginingEnd := OrderedCollection new add: 4.1; add: 7.2; add: 4.1 copy ; yourself.
	duplicateElement := 2.
	collectionWithDuplicateElement := OrderedCollection new add: duplicateElement ; add: duplicateElement ; add:4 ; yourself.	

	collection5Elements := OrderedCollection new add: 1; add: 2;  add: 3;  add: 4;  add: 5; yourself.! !
