
!SystemNavigation methodsFor: '*Tools-Browser'!
browserClass

	browserClass ifNil: [browserClass := self defaultBrowserClass].
	^ browserClass! !
