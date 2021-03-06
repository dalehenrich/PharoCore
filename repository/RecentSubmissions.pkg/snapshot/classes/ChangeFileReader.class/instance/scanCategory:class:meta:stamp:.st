
!ChangeFileReader methodsFor: 'private'!
scanCategory: category class: class meta: meta stamp: stamp

	| itemPosition method selector |
	[itemPosition := file position.
	method := file nextChunk.
	file skipStyleChunk.
	method size > 0]						"done when double terminators"
		whileTrue:
		[self addItem: (ChangeRecord new file: file position: itemPosition type: #method
							class: class category: category meta: meta stamp: stamp)
			text: 'method: ' , class , (meta ifTrue: [' class '] ifFalse: [' '])
				, ((selector := (Smalltalk globals at: class ifAbsent: [Object]) parserClass new parseSelector: method) isNil
					ifTrue: ['unparsableSelector']
					ifFalse: [selector])
				, (stamp isEmpty ifTrue: [''] ifFalse: ['; ' , stamp])]! !
