
!MCHttpRepository class methodsFor: 'initialization'!
clearPasswords
	self allSubInstancesDo: [:ea | ea password: ''].
! !
