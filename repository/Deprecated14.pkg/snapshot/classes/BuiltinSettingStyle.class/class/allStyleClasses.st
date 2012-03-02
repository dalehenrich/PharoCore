
!BuiltinSettingStyle class methodsFor: 'accessing'!
allStyleClasses
	^ ((((PragmaCollector
		filter: [:prag | prag keyword = 'settingStyle']) reset collected
		collect: [:p | p methodClass theNonMetaClass])
		reject: [:c | c = BuiltinSettingStyle]) asArray sort: [:a :b | a styleName < b styleName]) asOrderedCollection! !
