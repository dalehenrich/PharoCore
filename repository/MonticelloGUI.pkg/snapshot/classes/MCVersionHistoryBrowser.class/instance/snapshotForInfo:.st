
!MCVersionHistoryBrowser methodsFor: 'accessing'!
snapshotForInfo: aVersionInfo
	^ (self repositoryGroup versionWithInfo: aVersionInfo) snapshot! !
