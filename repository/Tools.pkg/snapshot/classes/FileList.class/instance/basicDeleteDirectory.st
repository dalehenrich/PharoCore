
!FileList methodsFor: 'own services'!
basicDeleteDirectory
	"Remove the currently selected directory"
	| localDirName |
	reference entries isEmpty
		 ifFalse:[^self inform:'Directory must be empty'].
	
	(self confirm: 'Really delete ' , reference basename , '?') 
		ifFalse: [^ self].
	
	self volumeListIndex: self volumeListIndex-1.

	reference delete.! !
