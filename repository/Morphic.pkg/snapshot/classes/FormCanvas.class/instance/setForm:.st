
!FormCanvas methodsFor: 'private'!
setForm: aForm

	self reset.
	form := aForm.
	port := self portClass toForm: form.
! !
