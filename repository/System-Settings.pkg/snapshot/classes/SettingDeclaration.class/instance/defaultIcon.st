
!SettingDeclaration methodsFor: 'user interface'!
defaultIcon
	^ (self type = #LogicalFont or: [self realValue isKindOf: AbstractFont])
		ifTrue: [ self theme   smallFontsIcon]
		ifFalse: [ self theme   smallPaintIcon]! !
