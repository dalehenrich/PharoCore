
!ClassOrganizer class methodsFor: 'cleanup'!
cleanUp: aggressive
	"Remove empty method categories when cleaning aggressively"

	aggressive ifTrue: [Smalltalk removeEmptyMessageCategories].
! !
