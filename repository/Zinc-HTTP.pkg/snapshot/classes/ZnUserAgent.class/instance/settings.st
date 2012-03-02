
!ZnUserAgent methodsFor: 'accessing'!
settings
	settings ifNil: [ settings := ZnUserAgentSettings defaultSettingsClass new ].
	^ settings! !
