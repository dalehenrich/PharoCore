
!SettingBrowser methodsFor: 'user interface'!
setViewedPackageNames: aText 
	| allViewed |
	allViewed := Set new.
	aText asString subStrings
		do: [:sub | (PackageOrganizer default
						packageNamed: sub
						ifAbsent: [])
				ifNotNil: [:pkg | allViewed add: pkg]].
	self changePackageSet: allViewed.
	self changed: #getViewedPackageNames
! !
