
!MCConfigurationBrowser methodsFor: 'dependencies'!
selectedDependency
	^ self dependencies at: self dependencyIndex ifAbsent: []! !
