
!SARInstaller class methodsFor: 'initialization'!
serviceFileInSAR
	"Answer a service for opening a changelist browser on a file"

	^ SimpleServiceEntry 
		provider: self 
		label: 'Install SAR'
		selector: #installSAR:
		description: 'Install this Squeak ARchive into the image.'
		buttonLabel: 'Install'! !
