
!FileList methodsFor: 'accessing'!
getListIndex
	^ list indexOf: reference ifAbsent: [ 0 ]! !
