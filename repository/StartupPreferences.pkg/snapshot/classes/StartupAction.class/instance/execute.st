
!StartupAction methodsFor: 'execution'!
execute

	| block correctlyExecuted |
	(self hasBeenExecuted and: [ self runOnce ]) ifTrue: [ ^ self ].
	block := self code isBlock
				ifTrue: [ self code ]
				ifFalse: [[ self class compilerClass evaluate: self code ]].
	correctlyExecuted := block on: Halt,Error do: [:ex | StartupLoader default errors add: {ex. self}. false].
	self hasBeenExecuted: (correctlyExecuted == false ).! !
