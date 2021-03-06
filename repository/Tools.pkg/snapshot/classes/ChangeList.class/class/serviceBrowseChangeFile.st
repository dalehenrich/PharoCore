
!ChangeList class methodsFor: 'filein/out'!
serviceBrowseChangeFile
	"Answer a service for opening a changelist browser on a file"

	^ (SimpleServiceEntry 
		provider: self 
		label: 'changelist browser'
		selector: #browseStream:
		description: 'Open a changelist tool on this file'
		buttonLabel: 'Changes')
		argumentGetter: [ :fileList | fileList readOnlyStream ]! !
