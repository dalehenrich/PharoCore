
!CompiledMethod methodsFor: 'source code management'!
destroySourcePointer
	"If receiver has trailer with source pointer,
	replace it with empty trailer. But do this only if receiver has a trailer with source pointer, but something else"
	(self trailer hasSourcePointer) ifTrue: [
		self becomeForward: (self copyWithTrailerBytes: CompiledMethodTrailer empty) ]! !
