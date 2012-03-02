
!ProcessBrowser methodsFor: 'process list'!
processListKey: aKey from: aView 
	^ aKey caseOf: {
		[$i] -> [self inspectProcess].
		[$I] -> [self exploreProcess].
		[$e] -> [self explorePointers].
		[$P] -> [self inspectPointers].
		[$t] -> [self terminateProcess].
		[$r] -> [self resumeProcess].
		[$s] -> [self suspendProcess].
		[$d] -> [self debugProcess].
		[$p] -> [self changePriority].
		[$m] -> [self messageTally].
		[$f] -> [self findContext].
		[$g] -> [self nextContext].
		[$a] -> [self toggleAutoUpdate].
		[$u] -> [self updateProcessList].
		[$S] -> [self signalSemaphore].
		[$k] -> [self moreStack]}
		 otherwise: [self arrowKey: aKey from: aView]! !
