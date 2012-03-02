
!MessageSet class methodsFor: 'utilities'!
parse: methodRef toClassAndSelector: csBlock
	"Decode strings of the form <className> [class] <selectorName>."

	| tuple cl |
	self flag: #mref.	"compatibility with pre-MethodReference lists"
	methodRef ifNil: [ ^ csBlock value: nil value: nil ].
	(methodRef isKindOf: RGMethodDefinition)
		ifTrue: [ ^ csBlock value: methodRef realClass value: methodRef selector ].
	methodRef isEmpty
		ifTrue: [ ^ csBlock value: nil value: nil ].
	tuple := methodRef asString findTokens: ' .'.
	cl := Smalltalk globals at: tuple first asSymbol ifAbsent: [ ^ csBlock value: nil value: nil ].
	(tuple size = 2 or: [ tuple size > 2 and: [ (tuple at: 2) ~= 'class' ] ])
		ifTrue: [ ^ csBlock value: cl value: (tuple at: 2) asSymbol ]
		ifFalse: [ ^ csBlock value: cl class value: (tuple at: 3) asSymbol ]! !
