
!GoferApiTest methodsFor: 'testing-repositories'!
testFtpRepository
	Smalltalk globals
		at: #MCFtpRepository
		ifPresent: [ :ftpRepositoryClass | 
			gofer url: 'ftp://squeakfoundation.org/39a' username: 'foo' password: 'bar'.
			self assert: gofer repositories: #('ftp://foo@squeakfoundation.org/39a').
			self assert: (gofer repositories first isKindOf: ftpRepositoryClass) ]! !
