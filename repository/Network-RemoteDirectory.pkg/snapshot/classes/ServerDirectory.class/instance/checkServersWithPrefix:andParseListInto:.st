
!ServerDirectory methodsFor: 'updates'!
checkServersWithPrefix: prefix andParseListInto: listBlock
	"Check that all servers are up and have the latest Updates.list.
	Warn user when can't write to a server that can still be read.
	The contents of updates.list is parsed into {{vers. {fileNames*}}*},
	and returned via the listBlock."

	|  serverList updateLists listContents maxSize outOfDateServers |
	serverList := self serversInGroup.
	serverList isEmpty
		ifTrue: [^Array new].

	updateLists := Dictionary new.
	serverList do: [:updateServer |
		[listContents := updateServer getFileNamed: prefix , 'updates.list'.
		updateLists at: updateServer put: listContents]
			on: Error
			do: [:ex | 
				UIManager default chooseFrom: #('Cancel entire update')
					title: 'Server ', updateServer moniker,
					' is unavailable.\Please consider phoning the administator.\' withCRs, listContents.
				^Array new]].

	maxSize := (updateLists collect: [:each | each size]) max.
	outOfDateServers := updateLists keys select: [:updateServer |
		(updateLists at: updateServer) size < maxSize].

	outOfDateServers do: [:updateServer |
		(self outOfDate: updateServer) ifTrue: [^Array new]].

	listBlock value: (self parseListContents: listContents).

	serverList removeAll: outOfDateServers.
	^serverList

! !
