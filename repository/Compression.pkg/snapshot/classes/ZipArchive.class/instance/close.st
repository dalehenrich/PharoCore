
!ZipArchive methodsFor: 'initialization'!
close
	self members do:[:m| m close].! !
