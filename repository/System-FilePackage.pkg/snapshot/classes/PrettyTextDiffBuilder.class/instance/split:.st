
!PrettyTextDiffBuilder methodsFor: 'initialize'!
split: aString 
	| formatted trimmed |
	trimmed := aString asString trimBoth.
	trimmed isEmpty ifTrue: [ ^super split: '' ].
	formatted := [ sourceClass prettyPrinterClass
				format: trimmed
				in: sourceClass
				notifying: nil] on: Error do: [ :ex | trimmed ].
	^ super split: formatted! !
