
!MCVersionReader class methodsFor: 'file services'!
services
	^ Array 
		with: self serviceLoadVersion
		with: self serviceMergeVersion
		with: self serviceOpenVersion! !
