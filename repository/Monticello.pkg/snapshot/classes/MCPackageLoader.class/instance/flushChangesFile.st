
!MCPackageLoader methodsFor: 'private'!
flushChangesFile
	"The changes file is second in the SourceFiles array"

	(SourceFiles at: 2) ifNotNil: [:f | f flush]! !
