
!LocaleID class methodsFor: 'instance creation'!
posixName: aString 
	^ self
		isoString: (aString copyReplaceAll: '_' with: '-')! !
