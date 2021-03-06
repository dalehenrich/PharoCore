
!OpaqueURI methodsFor: 'testing'!
extension
	"This method assumes a $. as extension delimiter"

	| i leafName |
	self pathComponents ifEmpty: [^''].
	leafName := self pathComponents last.
	i := leafName findLast: [:c | c = $.].
	^i = 0
		ifTrue: ['']
		ifFalse: [leafName copyFrom: i + 1 to: leafName size].
! !
