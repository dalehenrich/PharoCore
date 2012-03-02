
!DisplayScreen class methodsFor: 'snapshots'!
startUp  "DisplayScreen startUp"
	Display setExtent: self actualScreenSize depth: Display nativeDepth.
	Display beDisplay! !
