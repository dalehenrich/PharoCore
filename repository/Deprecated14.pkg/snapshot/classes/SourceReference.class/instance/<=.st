
!SourceReference methodsFor: 'comparing'!
<= aSourceReference
	"Sort source references according to: 1. class - 2. class comment - 3. class/instance methods - 4. method selector - 5. timestamp"
	
	self classSymbol < aSourceReference classSymbol ifTrue: [^true].
	self classSymbol > aSourceReference classSymbol ifTrue: [^false].
	aSourceReference isCommentReference ifTrue:[^false].
	self isCommentReference ifTrue:[^ true].
	self isClassMethodReference = aSourceReference isClassMethodReference ifFalse: [^self isClassMethodReference not].
	^ self methodSymbol = aSourceReference methodSymbol 
		ifTrue:[true]
		ifFalse:[self timeStamp <= aSourceReference timeStamp]! !
