
!ClassTest methodsFor: 'testing - access'!
testAllSharedPools
	"self run: #testAllSharedPools"

	self assert: Point allSharedPools = OrderedCollection new.
	self assert: Date sharedPools first = ChronologyConstants.
	self assert: Date sharedPools size = 1.
	
	"a metaclass does not have shared pools since only classes have shared pools"
	self shouldnt: [ Date class sharedPools] raise: Error.
	
	self assert: RootClassPoolUser sharedPools size = 1.
	self assert: ClassMultiplePoolUser sharedPools size = 2.
	"has shared pools does not take into account the fact that a superclass may use some shared pools"
	self assert: SubclassPoolUser sharedPools isEmpty.! !
