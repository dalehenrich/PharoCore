
!PolymorphSystemSettings class methodsFor: 'settings'!
appearanceSettingsOn: aBuilder 
	<systemsettings>
	(aBuilder group: #appearance)
		label: 'Appearance' translated;  
		description: 'All settings concerned with the look''n feel of your system' translated;
		with: [
			(aBuilder pickOne: #uiThemeClass)
				label: 'User interface theme' translated;
				target: self;
				default: UITheme standardThemeClass;
				order: 1;
				domainValues: self uiThemeClassChoices.
			self morphicSettingsOn: aBuilder.
			self desktopSettingsOn: aBuilder.
			self soundSettingsOn: aBuilder]! !
