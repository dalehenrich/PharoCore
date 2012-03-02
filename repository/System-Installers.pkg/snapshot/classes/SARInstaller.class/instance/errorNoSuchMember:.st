
!SARInstaller methodsFor: 'private'!
errorNoSuchMember: aMemberName
	(self confirm: 'No member named ', aMemberName, '. Do you want to stop loading?') ifTrue: [ self error: 'aborted' ].! !
