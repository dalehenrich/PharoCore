
!ZnUserAgentSettings class methodsFor: 'accessing'!
defaultUserAgentString
	^ ZnConstants frameworkNameAndVersion, ' ', self commentString, ' ',  self platform version asString! !
