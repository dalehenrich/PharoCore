
!ContextInspector methodsFor: 'accessing'!
fieldList
	"Answer the base field list plus an abbreviated list of indices."

	^ self baseFieldList , (object tempNames collect: [:t| '[',t,']'])! !
