
!TestCase methodsFor: 'running'!
debugAsFailure
	| semaphore |
	semaphore := Semaphore new.
	[semaphore wait.
	TestResource resetResources: self resources] fork.
	(self class selector: testSelector) runCaseAsFailure: semaphore! !
