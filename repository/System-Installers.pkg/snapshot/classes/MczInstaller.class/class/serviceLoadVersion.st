
!MczInstaller class methodsFor: 'services'!
serviceLoadVersion
	^ SimpleServiceEntry
		provider: self
		label: 'Load'
		selector: #loadVersionFile:
		description: 'Load a package version'! !
