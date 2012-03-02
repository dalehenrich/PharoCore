
!StandardFileStream methodsFor: 'read, write, position'!
flush
	"Flush pending changes"
	^self primFlush: fileID! !
