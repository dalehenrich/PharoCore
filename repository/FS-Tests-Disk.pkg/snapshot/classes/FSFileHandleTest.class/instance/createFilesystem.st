
!FSFileHandleTest methodsFor: 'running'!
createFilesystem
	^ FSFilesystem store: FSDiskStore activeClass createDefault! !
