
!ToolRegistry methodsFor: '*deprecated14'!
debugContext: aContext label: aString contents: contents
	"Open a debugger on the given process and context."
	self deprecated: 'Use Smalltalk tools debugger then a specific protocol like openContext:label:contents:' on: '22 January 2012' in: 'Pharo1.4'.
	self using: #debugger do: [:tool |
		^ tool openContext: aContext label: aString contents: contents
		]! !
