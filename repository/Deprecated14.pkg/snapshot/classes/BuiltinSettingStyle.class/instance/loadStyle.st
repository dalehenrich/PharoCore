
!BuiltinSettingStyle methodsFor: 'loading'!
loadStyle
	[self load]
		on: Error
		do: [:ex | self traceCr: ex printString.
			self traceCr: 'Error while loading Setting style ' , self class styleName.
			^ false].
	self traceCr:  'Setting style ' , self class styleName , ' loaded.'.
	^ true! !
