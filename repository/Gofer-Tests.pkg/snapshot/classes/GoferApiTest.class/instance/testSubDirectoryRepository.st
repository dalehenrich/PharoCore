
!GoferApiTest methodsFor: 'testing-repositories'!
testSubDirectoryRepository
	Smalltalk globals
		at: #MCSubDirectoryRepository
		ifPresent: [ :subDirectoryRepositoryClass | 
			gofer directory: FileDirectory default pathName , FileDirectory slash , '*'.
			self assert: gofer repositories: (Array with: FileDirectory default pathName , FileDirectory slash , '*').
			self assert: (gofer repositories first isKindOf: subDirectoryRepositoryClass) ]! !
