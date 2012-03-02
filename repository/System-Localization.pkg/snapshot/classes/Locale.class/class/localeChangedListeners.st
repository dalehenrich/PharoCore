
!Locale class methodsFor: 'notification'!
localeChangedListeners
	^LocaleChangeListeners ifNil: [LocaleChangeListeners := OrderedCollection new]! !
