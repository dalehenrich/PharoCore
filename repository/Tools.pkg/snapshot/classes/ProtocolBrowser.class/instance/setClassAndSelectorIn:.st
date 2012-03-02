
!ProtocolBrowser methodsFor: 'private'!
setClassAndSelectorIn: csBlock
	"Decode strings of the form    <selectorName> (<className> [class])"

	| i classAndSelString selString sel |
	sel := self selection ifNil: [^ csBlock value: nil value: nil].
	(sel isKindOf: RGMethodDefinition)
		ifTrue: [ ^ csBlock value: sel realClass value: sel selector ].
	sel setClassAndSelectorIn: csBlock

! !
