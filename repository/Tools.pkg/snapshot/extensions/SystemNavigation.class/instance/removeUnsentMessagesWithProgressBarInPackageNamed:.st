
!SystemNavigation methodsFor: '*Tools'!
removeUnsentMessagesWithProgressBarInPackageNamed: packageName
	self
		doWithProgressBar: [:class :selector| 
			class removeSelector: selector] 
		forUnsentMessagesInPackageNamed: packageName.
! !
