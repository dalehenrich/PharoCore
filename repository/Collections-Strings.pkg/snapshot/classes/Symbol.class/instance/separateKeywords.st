
!Symbol methodsFor: 'converting'!
separateKeywords
	"#'foo:zork:'  separateKeywords -> 'foo:  zork:'"
	"This implementation is faster than the one in OCompletion."
	^ self isKeyword
		ifFalse: [ self ]
		ifTrue: [
			String streamContents: [ :stream |
				(self findTokens: $:)
					do: [ :each | stream nextPutAll: each; nextPut: $: ]
					separatedBy: [ stream nextPutAll: '  ' ] ] ]! !
