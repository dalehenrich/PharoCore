
!SettingBrowser class methodsFor: 'world menu'!
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Settings')
		parent: #System;
		order: 1;
		icon:  self theme  smallConfigurationIcon;
		action: [SettingBrowser open]; 
		help: 'Opens a SystemSettingBrowser which allows you to alter many system settings'! !
