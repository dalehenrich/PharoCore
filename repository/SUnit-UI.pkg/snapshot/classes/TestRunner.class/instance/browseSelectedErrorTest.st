
!TestRunner methodsFor: 'browsing'!
browseSelectedErrorTest

	errorSelected ifNil: [^self].
	self browseSelectedTest: errorSelected! !
