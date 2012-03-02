
!FalseTest methodsFor: 'tests'!
testIfFalseIfTrue

	self assert: (false ifFalse: ['falseAlternativeBlock'] 
                      ifTrue: ['trueAlternativeBlock']) = 'falseAlternativeBlock'. ! !
