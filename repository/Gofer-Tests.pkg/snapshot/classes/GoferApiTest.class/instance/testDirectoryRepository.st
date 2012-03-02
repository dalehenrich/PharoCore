
!GoferApiTest methodsFor: 'testing-repositories'!
testDirectoryRepository
	gofer directory: FileDirectory default pathName.
	self assert: gofer repositories: (Array with: FileDirectory default pathName).
	self assert: (gofer repositories first isKindOf: MCDirectoryRepository)! !
