
!SettingNode methodsFor: 'accessing'!
package
	
	^ self methodClass ifNotNil: [:mc | PackageOrganizer default mostSpecificPackageOfClass: mc ifNone: []]! !
