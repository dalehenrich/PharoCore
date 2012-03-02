
!HostSystemMenus class methodsFor: 'accessing'!
default
	^Default ifNil: [Default := self new] ifNotNil: [Default]! !
