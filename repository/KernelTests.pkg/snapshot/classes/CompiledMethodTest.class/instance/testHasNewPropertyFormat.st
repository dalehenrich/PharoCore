
!CompiledMethodTest methodsFor: 'tests - testing'!
testHasNewPropertyFormat
		| method |
		method := (self class)>>#returnTrue.
		self assert: method hasNewPropertyFormat.
! !
