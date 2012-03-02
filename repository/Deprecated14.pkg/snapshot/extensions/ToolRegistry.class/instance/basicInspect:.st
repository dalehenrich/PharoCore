
!ToolRegistry methodsFor: '*deprecated14'!
basicInspect: anObject
	"Open an inspector on the given object. The tool set must know which inspector type to use for which object - the object cannot possibly know what kind of inspectors the toolset provides."
	
	self deprecated: 'Use Smalltalk tools basicInspector openOn: ... instead' on: '22 January 2012' in: 'Pharo1.4'.
	self using: #basicInspector do: [:tool | tool openOn: anObject	]! !
