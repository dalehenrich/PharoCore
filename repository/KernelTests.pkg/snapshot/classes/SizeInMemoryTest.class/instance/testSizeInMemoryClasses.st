
!SizeInMemoryTest methodsFor: 'tests'!
testSizeInMemoryClasses
	self assert: Date instancesSizeInMemory = (Date allInstances size * Date new sizeInMemory).
	
	
	
! !
