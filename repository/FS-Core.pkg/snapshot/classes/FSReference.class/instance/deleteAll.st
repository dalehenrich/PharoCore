
!FSReference methodsFor: 'operations'!
deleteAll
	"delete this directory and all children of it"
	FSDeleteVisitor delete: self! !
