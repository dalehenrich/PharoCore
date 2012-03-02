
!ToolRegistry methodsFor: '*deprecated14'!
openClassListBrowser: anArray title: aString
	"Open a class list browser"
	self deprecated: 'Use Smalltalk tools classListBrowser then a specific protocol like initForClassesNamed:title:' on: '19 January 2012' in: 'Pharo1.4'.
	self using: #classListBrowser do: [:tool |
		^ tool new initForClassesNamed: anArray title: aString
		]
! !
