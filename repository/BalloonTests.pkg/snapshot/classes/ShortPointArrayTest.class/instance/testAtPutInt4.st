
!ShortPointArrayTest methodsFor: 'testing'!
testAtPutInt4

	"This is the difference between PointArray"
	self should: [pointArray at: 2 put: 405933 @ -405933.] raise: Error
	! !
