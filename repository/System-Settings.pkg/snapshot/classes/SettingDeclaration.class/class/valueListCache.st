
!SettingDeclaration class methodsFor: 'cache accessing'!
valueListCache
	^ ValueListCache ifNil: [ValueListCache := WeakKeyDictionary new]! !
