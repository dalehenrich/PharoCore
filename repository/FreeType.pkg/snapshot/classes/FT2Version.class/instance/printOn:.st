
!FT2Version methodsFor: 'printing'!
printOn: aStream
	aStream print: major; nextPut: $.; print: minor; nextPut:$.; print: patch.! !
