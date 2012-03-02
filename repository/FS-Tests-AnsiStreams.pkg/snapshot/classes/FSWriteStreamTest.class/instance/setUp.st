
!FSWriteStreamTest methodsFor: 'running'!
setUp
	filesystem := FSFilesystem memory.
	stream := filesystem writeStreamOn: 'giffle'! !
