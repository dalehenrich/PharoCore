
!MCMergeBrowser methodsFor: '*Polymorph-Tools-Diff'!
chooseAllUnchosenRemote
	"Notify the potential new state of canMerge."
	
	conflicts do: [ :ea | ea isResolved ifFalse: [ ea chooseRemote ] ].
	self changed: #text; changed: #list; changed: #canMerge! !
