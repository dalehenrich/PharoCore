
!ProtoObject methodsFor: 'pointers'!
pointsTo: anObject
	"Answers true if I hold a reference to anObject, or false otherwise"

	^ (self instVarsInclude: anObject)
		or: [ ^self class == anObject and: [ self class isCompact not ] ]! !
