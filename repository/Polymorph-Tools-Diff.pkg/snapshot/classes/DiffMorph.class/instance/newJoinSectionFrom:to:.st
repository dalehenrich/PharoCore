
!DiffMorph methodsFor: 'as yet unclassified'!
newJoinSectionFrom: srcRange to: dstRange
	"Answer a new join section."

	|spl dpl sy1 sy2 dy1 dy2 t c|
	spl := self srcMorph textMorph paragraph lines.
	dpl := self dstMorph textMorph paragraph lines.
	t := #modification.
	sy1 := srcRange first > spl size
		ifTrue: [t := #addition.
				spl last bottom truncated - 1]
		ifFalse: [(spl at: srcRange first) top truncated - 1].
	sy2 := srcRange size < 1
		ifTrue: [t := #addition.
				 sy1 + 3]
		ifFalse: [srcRange last > spl size
				ifTrue: [spl last bottom truncated + 3]
				ifFalse: [(spl at: srcRange last) bottom truncated - 1]].
	dy1 := dstRange first > dpl size
		ifTrue: [t := #removal.
				dpl last bottom truncated - 1]
		ifFalse: [(dpl at: dstRange first) top truncated - 1].
	dy2 := dstRange size < 1
		ifTrue: [t := #removal.
				dy1 + 3]
		ifFalse: [dstRange last > dpl size
				ifTrue: [dpl last bottom truncated + 3]
				ifFalse: [(dpl at: dstRange last) bottom truncated - 1]].
	c := self colorForType: t.
	^self newJoinSection
		type: t;
		srcColor: c;
		dstColor: c;
		srcLineRange: srcRange;
		dstLineRange: dstRange;
		srcRange: (sy1 to: sy2);
		dstRange: (dy1 to: dy2);
		createHighlightsFrom: self srcMorph textMorph paragraph
		to: self dstMorph textMorph paragraph! !
