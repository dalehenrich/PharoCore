
!MCSnapshotBrowserTest methodsFor: 'running'!
setUp
	model := MCSnapshotBrowser forSnapshot: MCSnapshotResource current snapshot.
	morph := model buildWindow.! !
