
!MCWorkingCopyBrowser methodsFor: 'morphic ui'!
initialize
	super initialize.
	order := self class order.
	MCWorkingCopy addDependent: self.
	self workingCopies do: [:ea | ea addDependent: self].! !
