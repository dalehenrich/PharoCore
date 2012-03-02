
!MCDirectoryRepository class methodsFor: 'instance creation'!
morphicConfigure
	^ (UIManager default chooseDirectoryFrom: (FileDirectory on: self defaultDirectoryName)) ifNotNil:
		[:directory |
		self new directory: directory]! !
