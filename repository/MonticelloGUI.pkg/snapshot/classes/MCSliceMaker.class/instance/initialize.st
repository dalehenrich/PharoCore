
!MCSliceMaker methodsFor: 'initialize-release'!
initialize
	super initialize.
	info := MCSliceInfo new.
	info addDependent: self.
	
! !
