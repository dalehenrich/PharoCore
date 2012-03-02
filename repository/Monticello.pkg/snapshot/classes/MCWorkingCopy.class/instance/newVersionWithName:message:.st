
!MCWorkingCopy methodsFor: 'operations'!
newVersionWithName: nameString message: messageString
	
	| info deps |
	info := ancestry infoWithName: nameString message: messageString.
	ancestry := MCWorkingAncestry new addAncestor: info.
	self modified: true; modified: false.
	
	deps := self requiredPackages collect:
		[:ea | 
		MCVersionDependency
			package: ea
			info:  (ea workingCopy currentVersionInfoWithMessage: messageString) ].

	^ MCVersion
		package: package
		info: info
		snapshot: package snapshot
		dependencies: deps! !
