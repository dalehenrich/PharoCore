
!ReleaseTest methodsFor: 'testing'!
testUndeclared
	Smalltalk cleanOutUndeclared. 
	self assert: Undeclared isEmpty
	! !
