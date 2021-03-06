
!TPureBehavior methodsFor: 'accessing method dictionary'!
classAndMethodFor: aSymbol do: binaryBlock ifAbsent: absentBlock
	"Looks up the selector aSymbol in this class/trait. If it is found, binaryBlock is evaluated
	with this class/trait and the associated method. Otherwise absentBlock is evaluated.
	Note that this implementation is very simple because PureBehavior does not know
	about inheritance (cf. implementation in Behavior)"
	
	^ binaryBlock value: self value: (self compiledMethodAt: aSymbol ifAbsent: [^ absentBlock value]).! !
