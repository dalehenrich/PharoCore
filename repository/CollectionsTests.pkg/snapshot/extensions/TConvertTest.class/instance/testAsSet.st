
!TConvertTest methodsFor: 'tests - converting'!
testAsSet
	| |
	"test with a collection without equal elements :"
	self assertSameContents: self collectionWithoutEqualElements whenConvertedTo: Set.
	! !
