
!SUnitExtensionsTest methodsFor: 'real tests'!
shouldRaiseWithExceptionDoTest

	self 
		should: [ Error signal: '1' ]
		raise: Error
		withExceptionDo: [ :anException | self assert: anException messageText = '1' ]! !
