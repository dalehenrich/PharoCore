
!InstructionStream methodsFor: 'testing'!
willJump
	"unconditionally"

	| byte |
	byte := self method at: pc.
	^ (byte between: 144 and: 151) or: [byte between: 160 and: 167]! !
