
!MailMessage methodsFor: 'multipart'!
addMixedPart: newPart
	self makeMultipart: 'mixed' with: newPart.
! !
