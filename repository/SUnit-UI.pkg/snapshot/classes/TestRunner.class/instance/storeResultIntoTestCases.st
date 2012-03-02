
!TestRunner methodsFor: 'history saving'!
storeResultIntoTestCases

	result classesTested do: [:testCaseCls | testCaseCls generateLastStoredRunMethod ]
! !
