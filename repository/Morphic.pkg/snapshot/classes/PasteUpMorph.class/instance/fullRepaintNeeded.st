
!PasteUpMorph methodsFor: '*morphic-windows'!
fullRepaintNeeded

	worldState doFullRepaint.
	self  windowsSatisfying: [:w | w makeMeVisible. false].

! !
