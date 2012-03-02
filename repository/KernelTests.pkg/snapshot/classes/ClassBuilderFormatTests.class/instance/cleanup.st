
!ClassBuilderFormatTests methodsFor: 'utilities'!
cleanup
	subClass ifNotNil:[subClass removeFromSystem].
	baseClass ifNotNil:[baseClass removeFromSystem].
	(Smalltalk organization listAtCategoryNamed: self categoryNameForTemporaryClasses) isEmpty
		ifTrue: [Smalltalk organization removeCategory: self categoryNameForTemporaryClasses]! !
