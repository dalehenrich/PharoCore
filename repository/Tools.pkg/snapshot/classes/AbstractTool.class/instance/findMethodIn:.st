
!AbstractTool methodsFor: 'method'!
findMethodIn: aClass

	| recentList pattern foundMethod |
	aClass ifNil: [^ nil ].
	recentList := aClass selectors.
	recentList size = 0
		ifTrue: [pattern := UIManager default request: 'Message name or fragment?']
		ifFalse: [pattern := UIManager default 
				enterOrRequestFrom: recentList 
				lines: #() 
				title: 'Message name or fragment?'].
			
	pattern isEmptyOrNil ifTrue: [^ nil ].
	foundMethod := self systemNavigation selectorFromPattern: pattern withCaption: '' startingFrom: self selectedClass.
	foundMethod ifNil: [^ nil ].
	^ foundMethod! !
