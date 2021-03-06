
!PackageDependencyTest methodsFor: 'test utility'!
dependenciesOfPackageNamed: pkgNameAsString
	| deps classes |
	classes := self referencesInPackageNamed: pkgNameAsString.

	deps := Dictionary new.
	classes
		do: [:aClass | 
			| pkg |
			pkg := PackageOrganizer default
						packageOfClass: aClass
						ifNone: [].
			pkg
				ifNil: [Transcript cr; show: 'WARNING: No package for ' , pkg]
				ifNotNil: [(deps
							at: pkg packageName
							ifAbsentPut: [OrderedCollection new])
						  add: aClass]].
	deps
		removeKey: pkgNameAsString
		ifAbsent: [].
	^ deps! !
