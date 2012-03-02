
!FileDirectoryTest methodsFor: 'resources'!
tearDown
	[ self deleteDirectory ] on: Error do: [ :ex | ]! !
