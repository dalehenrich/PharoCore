
!TestRunner methodsFor: 'browsing'!
browseSelectedFailedTest

	failedSelected ifNil: [^self].
	self browseSelectedTest: failedSelected! !
