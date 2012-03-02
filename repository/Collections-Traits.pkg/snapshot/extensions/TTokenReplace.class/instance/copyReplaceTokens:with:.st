
!TTokenReplace methodsFor: 'copying'!
copyReplaceTokens: oldSubstring with: newSubstring
	"Answer a copy of the receiver in which all occurrences of oldSubstring have been replaced by newSubstring. All the characters surrounding the recplacement must not be alphanumeric."

	| startSearch currentIndexOf searchIncrement|
	startSearch := 1.
	searchIncrement := newSubstring size.
	^ self class new: self size streamContents: [ :stream|
		[(currentIndexOf := self indexOfSubCollection: oldSubstring startingAt: startSearch) > 0]
			whileTrue: [
				stream next: (currentIndexOf - startSearch) putAll: self startingAt: startSearch.
				
				((currentIndexOf = 1 or: [(self at: currentIndexOf-1) isAlphaNumeric not])
				 and: [currentIndexOf = self size or: [(self at: currentIndexOf+1) isAlphaNumeric not]])
					ifTrue: [
						stream nextPutAll: newSubstring.
						startSearch := currentIndexOf + searchIncrement]
					ifFalse: [ startSearch := currentIndexOf]].
		
		"copy over the last leftover pieces"
		stream next: (self size - startSearch + 1) putAll: self startingAt: startSearch].
! !
