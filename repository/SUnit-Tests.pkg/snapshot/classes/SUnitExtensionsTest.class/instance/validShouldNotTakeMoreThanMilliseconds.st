
!SUnitExtensionsTest methodsFor: 'real tests'!
validShouldNotTakeMoreThanMilliseconds

	self should: [(Delay forMilliseconds: 100) wait] notTakeMoreThanMilliseconds: 200! !
