
!FalseTest methodsFor: 'tests'!
testIfTrue
	self
		assert:
			(false
				ifTrue: [ 'alternativeBlock' ]) isNil! !
