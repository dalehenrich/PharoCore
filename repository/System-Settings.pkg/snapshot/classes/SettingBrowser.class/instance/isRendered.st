
!SettingBrowser methodsFor: 'user interface'!
isRendered
	| renderingMorphs |
	renderingMorphs := SystemWindow allSubInstances select: [:sw | sw model = self].
	^ renderingMorphs anySatisfy: [:m | m owner notNil]! !
