
!HelpBrowser class methodsFor: 'accessing'!
defaultHelpBrowser
	DefaultHelpBrowser isNil ifTrue: [DefaultHelpBrowser := self].
	^DefaultHelpBrowser
	! !
