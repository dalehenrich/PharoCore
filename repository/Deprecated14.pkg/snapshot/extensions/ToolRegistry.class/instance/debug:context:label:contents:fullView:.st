
!ToolRegistry methodsFor: '*deprecated14'!
debug: aProcess context: aContext label: aString contents: contents fullView: aBool
	"Open a debugger on the given process and context."
	self deprecated: 'Use Smalltalk tools debugger then a specific protocol like openOn:context:label:contents:fullView:' on: '22 January 2012' in: 'Pharo1.4'.
	self using: #debugger do: [:tool |
		^ tool 
			openOn: aProcess 
			context: aContext 
			label: aString 
			contents: contents 
			fullView: aBool ]! !
