
!MczInstaller methodsFor: 'installation'!
installMember: member
	 
	self useNewChangeSetDuring:
		[ | str |str := member contentStream text.
		str setConverterForCode.
		str fileInAnnouncing: 'loading ', member fileName]! !
