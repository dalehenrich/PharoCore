
!ExpandedSourceFileArrayTest methodsFor: 'testing'!
testTimeStamp
	"Test that we can access timeStamp correctly"
	"self debug: #testTimeStamp"

	| okCm notOkCm |
	okCm := Point>>#dist: .
	self assert: (SourceFiles sourcedDataAt: okCm sourcePointer) = 'Point methodsFor: ''point functions'' stamp: ''lr 7/4/2009 10:42'''.
	self assert: (SourceFiles timeStampAt: okCm sourcePointer) = 'lr 7/4/2009 10:42'.
	
	notOkCm := ComposableMorph >> #newToolSpacer.
	self assert: (SourceFiles sourcedDataAt: notOkCm sourcePointer) = 'Trait method'.
	"Here this is clearly a problem because we should get the same as the other one to be able to extract protocol"
	self assert: (SourceFiles timeStampAt: notOkCm sourcePointer) = ''.
	! !
