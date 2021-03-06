
!SystemNavigation methodsFor: '*Tools'!
unsentMessagesWithProgressBarInPackageNamed: packageName
	| unsentMessages |
	unsentMessages := Set new.
	self doWithProgressBar: [:class :selector| 
			unsentMessages add: (self createMethodNamed: selector realParent: class)] 
		forUnsentMessagesInPackageNamed: packageName.
	^unsentMessages! !
