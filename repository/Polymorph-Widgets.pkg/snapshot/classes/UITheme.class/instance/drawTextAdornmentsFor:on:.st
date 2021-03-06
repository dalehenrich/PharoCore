
!UITheme methodsFor: 'border-styles'!
drawTextAdornmentsFor: aPluggableTextMorph on: aCanvas
	"Indicate edit status for the given morph."
	
	(aPluggableTextMorph model notNil and: [aPluggableTextMorph model refusesToAcceptCode])
		ifTrue: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color tan on: aCanvas].
	(aPluggableTextMorph hasEditingConflicts or: [aPluggableTextMorph hasValidText not])
		ifTrue: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color red on: aCanvas].
	aPluggableTextMorph hasUnacceptedEdits
		ifTrue: [aPluggableTextMorph model wantsDiffFeedback
					ifTrue: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color yellow darker on: aCanvas]
					ifFalse: [^self drawTextAdornmentFor: aPluggableTextMorph color: Color orange on: aCanvas]].
	aPluggableTextMorph model wantsDiffFeedback
		ifTrue: [self drawTextAdornmentFor: aPluggableTextMorph color: Color green on: aCanvas]! !
