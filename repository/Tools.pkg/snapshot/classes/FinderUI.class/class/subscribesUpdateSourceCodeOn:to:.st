
!FinderUI class methodsFor: 'event subscriptions'!
subscribesUpdateSourceCodeOn: aFinder to: anInstance
	aFinder
		when: #updateSourceCode
		send: #updateSourceCode
		to: anInstance.! !
