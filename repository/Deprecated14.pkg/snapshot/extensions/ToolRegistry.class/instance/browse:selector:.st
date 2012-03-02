
!ToolRegistry methodsFor: '*deprecated14'!
browse: aClass selector: aSelector
	"Open a browser"
	self deprecated: 'Use Smalltalk tools browser then a specific protocol like fullOnClass:selector:' on: '15 October 2011' in: 'Pharo1.4'.
	self using: #browser do: [:tool |
		tool fullOnClass: aClass selector: aSelector
	]! !
