
!SettingNode methodsFor: 'accessing'!
inputMorphFor: aContainer
	^ self settingDeclaration 
		ifNotNil: [:v | v inputMorphFor: aContainer]! !
