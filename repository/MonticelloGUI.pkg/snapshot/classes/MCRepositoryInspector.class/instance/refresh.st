
!MCRepositoryInspector methodsFor: 'as yet unclassified'!
refresh
	packages := repository packages.
	self changed: #packageList.
	self packageSelection: self packageSelection.
! !
