
!ToolRegistry methodsFor: '*deprecated14'!
browseHierarchy: aClass selector: aSelector
	"Open a browser"
	self deprecated: 'Use Smalltalk tools browser then a specific protocol like  setClass:selector:  and spawnHierarchy' on: '18 January 2012' in: 'Pharo1.4'.
	
	(aClass == nil)  ifTrue: [^ self].
	
	self using: #browser do: [:tool | | newBrowser |
		(newBrowser := tool new) setClass: aClass selector: aSelector.
		newBrowser spawnHierarchy ]
! !
