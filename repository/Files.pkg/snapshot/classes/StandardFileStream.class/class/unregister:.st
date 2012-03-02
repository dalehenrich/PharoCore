
!StandardFileStream class methodsFor: 'registry'!
unregister: anObject
	^self registry remove: anObject ifAbsent:[]! !
