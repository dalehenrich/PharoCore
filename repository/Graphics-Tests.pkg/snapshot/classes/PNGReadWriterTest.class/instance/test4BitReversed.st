
!PNGReadWriterTest methodsFor: 'tests - bits'!
test4BitReversed
	self encodeAndDecodeReverse: (self drawStuffOn: (Form extent: 33@33 depth: 4))! !
