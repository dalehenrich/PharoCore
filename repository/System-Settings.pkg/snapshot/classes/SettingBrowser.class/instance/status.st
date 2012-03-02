
!SettingBrowser methodsFor: 'accessing'!
status
	^ status ifNil: [status := String new writeStream]! !
