
!TEmptySequenceableTest methodsFor: 'tests - sequence isempty'!
testSequenceIfNotEmptyDo

	self empty ifNotEmptyDo: [:s | self assert: false].
	self assert: (self nonEmpty ifNotEmptyDo: [:s | self accessValuePutInOn: s]) = self valuePutIn
! !
