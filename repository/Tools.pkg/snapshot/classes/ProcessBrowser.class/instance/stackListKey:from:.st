
!ProcessBrowser methodsFor: 'views'!
stackListKey: aKey from: aView 
	^ aKey caseOf: {
		[$c] -> [self inspectContext].
		[$C] -> [self exploreContext].
		[$i] -> [self inspectReceiver].
		[$I] -> [self exploreReceiver].
		[$b] -> [self browseContext]}
		 otherwise: [self arrowKey: aKey from: aView]! !
