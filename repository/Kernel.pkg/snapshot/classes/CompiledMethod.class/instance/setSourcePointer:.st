
!CompiledMethod methodsFor: 'source code management'!
setSourcePointer: srcPointer
	"We can't change the trailer of existing method, since
	it could have completely different format. Therefore we need to
	generate a copy with new trailer, containing an scrPointer, and then
	#become it"
	| trailer copy |
	trailer := CompiledMethodTrailer new sourcePointer: srcPointer.
	copy := self copyWithTrailerBytes: trailer.
	self becomeForward: copy.
	^ copy! !
