
!TraitBehavior methodsFor: 'traits'!
classesComposedWithMe
	^users gather: [:u | u classesComposedWithMe]
! !
