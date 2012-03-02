
!Array methodsFor: 'self evaluating'!
printAsLiteralFormOn: aStream
	aStream nextPut: $#.
	self printElementsOn: aStream
! !
