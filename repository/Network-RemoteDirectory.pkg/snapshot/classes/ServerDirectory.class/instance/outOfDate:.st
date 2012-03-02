
!ServerDirectory methodsFor: 'updates'!
outOfDate: aServer
	"Inform the user that this server does not have a current version of 'Updates.list'  Return true if the user does not want any updates to happen."

| response |
response := UIManager default chooseFrom: #('Install on others' 'Cancel entire update')
		title: 'The server ', aServer moniker, ' is not up to date.
Please store the missing updates maually.'.
^ response ~= 1! !
