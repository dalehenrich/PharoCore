
!MessageSet methodsFor: 'private'!
setClassAndSelectorIn: csBlock
	| sel |
	"Decode strings of the form <className> [class] <selectorName>."

	sel := self selection.
	(sel isKindOf: RGMethodDefinition)
		ifTrue: [ ^ csBlock value: sel realClass value: sel selector ].
	sel setClassAndSelectorIn: csBlock
	! !
