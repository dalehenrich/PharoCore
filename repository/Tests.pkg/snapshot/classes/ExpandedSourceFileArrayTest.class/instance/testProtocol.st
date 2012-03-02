
!ExpandedSourceFileArrayTest methodsFor: 'testing'!
testProtocol
	"Test that we can access protocol correctly"
	"self debug: #testProtocol"

	| okCm notOkCm |
	okCm := Point>>#dist: .
	self assert: (SourceFiles sourcedDataAt: okCm sourcePointer) = 'Point methodsFor: ''point functions'' stamp: ''lr 7/4/2009 10:42'''.
	self assert: (SourceFiles protocolAt: okCm sourcePointer) = 'point functions'.
	
	notOkCm := ComposableMorph >> #newToolSpacer.
	self assert: (SourceFiles sourcedDataAt: notOkCm sourcePointer) = 'Trait method'.
	"Here this is clearly a problem because we should get the same as the other one to be able to extract protocol"
	self assert: (SourceFiles protocolAt: notOkCm sourcePointer) isNil
	! !
