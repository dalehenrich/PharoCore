
!MCVersionLoader methodsFor: 'checking'!
checkForModificationsIfCancel: cancelBlock ifMerge: mergeBlock
	| modifications |
	
	"first check if there are local packages which are dirty"
	modifications := self localModifications.
	modifications isEmpty ifTrue: [ ^ self].
	
	"if we find changed packages check if we only add stuff, then its certainly safe to automatically merge"
	(modifications allSatisfy: [ :version| 
			version changes operations allSatisfy: [ :change| change isAddition ]])
		ifTrue: [ ^ mergeBlock value ].
	
	"ask the user what to do.. merge | overwrite | abort"
	^ self warnAboutLosingChangesTo: modifications ifCancel: cancelBlock ifMerge: mergeBlock! !
