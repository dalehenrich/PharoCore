
!MCClassDefinition methodsFor: 'visiting'!
accept: aVisitor
	"simulate a bugfix"

	aVisitor visitClassDefinition: self.
	(self hasClassInstanceVariables or: [self hasClassTraitComposition])
		ifTrue: [aVisitor visitMetaclassDefinition: self].
! !
