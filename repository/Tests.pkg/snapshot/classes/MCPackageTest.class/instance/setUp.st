
!MCPackageTest methodsFor: 'running'!
setUp

	"here we have to make sure that there is no packae named Monticellomock left, so that no old package interfer with the test."
	 MCWorkingCopy registry
               removeKey: (MCPackage new name: 'Monticellomocks')
               ifAbsent:[].
       PackageOrganizer default unregisterPackageNamed: 'Monticellomocks'.! !
