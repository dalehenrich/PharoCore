
!FinderUI class methodsFor: 'event subscriptions'!
subscribesDisableUseRegExOn: aFinder to: anInstance.
	aFinder
		when: #disableUseRegEx
		send: #disableUseRegEx
		to: anInstance.! !
