
!BrowserSystemSettings class methodsFor: 'settings'!
defaultBrowserSettingOn: aBuilder
	<systemsettings>
	(aBuilder pickOne: #defaultBrowser)
			order: -1;
			parent: #codeBrowsing;
			target: SystemBrowser;
			getSelector: #default;
			setSelector: #default:;
			label: 'Default browser' translated;
			domainValues: SystemBrowser registeredClasses! !
