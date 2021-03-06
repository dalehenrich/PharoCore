
!PackageInfo methodsFor: 'testing'!
changeRecordForOverriddenMethod: aMethodReference
	| sourceFilesCopy method position |
	method := aMethodReference actualClass compiledMethodAt: aMethodReference selector.
	position := method filePosition.
	sourceFilesCopy := SourceFiles
		collect: [ :x | 
			x isNil
				ifTrue: [ nil ]
				ifFalse: [ x readOnlyCopy ] ].
	[ 
	| file prevPos prevFileIndex chunk stamp methodCategory tokens |
	method fileIndex = 0
		ifTrue: [ ^ nil ].
	file := sourceFilesCopy at: method fileIndex.
	[ position notNil & file notNil ]
		whileTrue: [ 
			file position: (0 max: position - 150).	"Skip back to before the preamble"
			[ file position < (position - 1) ] whileTrue: [ chunk := file nextChunk ].	"then pick it up from the front"	"Preamble is likely a linked method preamble, if we're in
			a changes file (not the sources file).  Try to parse it
			for prior source position and file index"
			prevPos := nil.
			stamp := ''.
			(chunk findString: 'methodsFor:' startingAt: 1) > 0
				ifTrue: [ tokens := Scanner new scanTokens: chunk ]
				ifFalse: [ tokens := Array new	"ie cant be back ref" ].
			((tokens size between: 7 and: 8) and: [ (tokens at: tokens size - 5) = #methodsFor: ])
				ifTrue: [ 
					(tokens at: tokens size - 3) = #stamp:
						ifTrue: [ 
							"New format gives change stamp and unified prior pointer"
							stamp := tokens at: tokens size - 2.
							prevPos := tokens last.
							prevFileIndex := sourceFilesCopy fileIndexFromSourcePointer: prevPos.
							prevPos := sourceFilesCopy filePositionFromSourcePointer: prevPos ]
						ifFalse: [ 
							"Old format gives no stamp; prior pointer in two parts"
							prevPos := tokens at: tokens size - 2.
							prevFileIndex := tokens last ].
					(prevPos = 0 or: [ prevFileIndex = 0 ])
						ifTrue: [ prevPos := nil ] ].
			((tokens size between: 5 and: 6) and: [ (tokens at: tokens size - 3) = #methodsFor: ])
				ifTrue: [ 
					(tokens at: tokens size - 1) = #stamp:
						ifTrue: [ 
							"New format gives change stamp and unified prior pointer"
							stamp := tokens at: tokens size ] ].
			methodCategory := tokens after: #methodsFor: ifAbsent: [ 'as yet unclassifed' ].
			(self includesMethodCategory: methodCategory ofClass: aMethodReference actualClass)
				ifTrue: [ 
					methodCategory = (Smalltalk globals at: #Categorizer ifAbsent: [ Smalltalk globals at: #ClassOrganizer ]) default
						ifTrue: [ methodCategory := methodCategory , ' ' ].
					^ ChangeRecord new
						file: file
						position: position
						type: #method
						class: aMethodReference theNonMetaClassName
						category: methodCategory
						meta: aMethodReference classIsMeta
						stamp: stamp ].
			position := prevPos.
			prevPos notNil
				ifTrue: [ file := sourceFilesCopy at: prevFileIndex ] ].
	^ nil ]
		ensure: [ 
			sourceFilesCopy
				do: [ :x | 
					x notNil
						ifTrue: [ x close ] ] ]! !
