
!TextMorphTest methodsFor: 'testing'!
testInitialize
	"For now, just make sure initialization doesn't throw exception"

	self shouldnt: [TextMorph initialize] raise: Error.! !
