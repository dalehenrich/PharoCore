
!SettingNode methodsFor: 'accessing'!
receiverPackage
	^ self settingReceiver
		ifNotNil: [PackageOrganizer default
				mostSpecificPackageOfClass: self settingReceiver class
				ifNone: []] ! !
