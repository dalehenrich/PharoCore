
!PackageDependencyTest methodsFor: 'test utility'!
referencesInPackageNamed: pkgNameAsString
	| pi |
	pi := PackageOrganizer default
				packageNamed: pkgNameAsString
				ifAbsent: [^ self].

	^ self referencesInPackage: pi! !
