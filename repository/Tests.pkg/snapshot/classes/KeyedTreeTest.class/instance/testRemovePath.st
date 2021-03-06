
!KeyedTreeTest methodsFor: 'as yet unclassified'!
testRemovePath
	"Test the remove path method for success and failure modes."

	|tree|
	tree := KeyedTree new
		at: 1 put: (KeyedTree new
					at: #two put: 'One-Two';
					at: #three put: 'One-Three';
					yourself);
		at: 2 put: 'Two';
		yourself.
	self should: [tree removePath: #(4)] raise: TestResult error.
	self should: [tree removePath: #(1 one)] raise: TestResult error.
	self should: [(tree removePath: #(1 two)) = 'One-Two'].
	self should: [(tree atPath: #(1 two) ifAbsent: []) = nil].
	self should: [(tree removePath: #(2)) = 'Two'].
	self should: [(tree atPath: #(2) ifAbsent: []) = nil].! !
