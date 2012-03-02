
!MailMessage methodsFor: 'multipart'!
addAlternativePart: newPart
	self makeMultipart: 'alternative' with: newPart.
! !
