
!MCVersionLoader methodsFor: 'checking'!
warnAboutLosingChangesTo: versionCollection
	^ (MCMergeOrLoadWarning signalFor: versionCollection).! !
