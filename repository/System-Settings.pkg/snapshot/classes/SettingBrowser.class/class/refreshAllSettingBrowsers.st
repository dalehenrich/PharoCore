
!SettingBrowser class methodsFor: 'updating'!
refreshAllSettingBrowsers
	self allSubInstances do: [:sb | sb updateList]! !
