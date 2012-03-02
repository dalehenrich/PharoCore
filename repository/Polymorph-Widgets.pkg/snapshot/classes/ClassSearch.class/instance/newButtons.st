
!ClassSearch methodsFor: 'actions'!
newButtons
	"Answer new buttons as appropriate."

	^{self newOKButton. self buildBrowseButton. self newCancelButton isDefault: true}! !
