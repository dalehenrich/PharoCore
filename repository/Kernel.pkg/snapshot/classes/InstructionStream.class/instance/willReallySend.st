
!InstructionStream methodsFor: 'testing'!
willReallySend
	"Answer whether the next bytecode is a real message-send,
	not blockCopy:."

	| byte |
	byte := self method at: pc.
	^byte >= 131
	  and: [byte ~= 200
	  and: [byte >= 176   "special send or short send"
		or: [byte <= 134 "long sends"	
			and: [| litIndex |
				"long form support demands we check the selector"
				litIndex := byte = 132
							ifTrue: [(self method at: pc + 1) // 32 > 1 ifTrue: [^false].
									self method at: pc + 2]
							ifFalse: [byte = 134
										ifTrue: [(self method at: pc + 1) bitAnd: 2r111111]
										ifFalse: [(self method at: pc + 1) bitAnd: 2r11111]].
				(self method literalAt: litIndex + 1) ~~ #blockCopy:]]]]! !
