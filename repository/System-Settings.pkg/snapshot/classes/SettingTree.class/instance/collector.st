
!SettingTree methodsFor: 'accessing'!
collector
	^ collector ifNil: [collector := PragmaCollector new]! !
