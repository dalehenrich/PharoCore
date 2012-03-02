
!IntegerTest methodsFor: 'tests - bitLogic'!
testBitString
	"self debug: #testBitString"
	
	self assert: 2 bitString  = '0000000000000000000000000000010'.
	self assert: -1 bitString	= '1111111111111111111111111111111'.
	self assert: -2 bitString = '1111111111111111111111111111110'.
	self assert: 2 bitString  size = 31. 
		"32 minus 1 for immediate encoding = 31 = 30 for number + 1 for sign"
	self assert: 2 bitString  size = (SmallInteger maxVal highBit + 1).! !
