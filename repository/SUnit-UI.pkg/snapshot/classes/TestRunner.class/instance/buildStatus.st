
!TestRunner methodsFor: 'newbuilding'!
buildStatus

	^ (PluggableTextFieldMorph
		on: self 
		text: #statusText 
		accept: nil 
		readSelection: nil 
		menu: #statusMenu:)
			getColorSelector: #statusColor ; yourself.
	! !
