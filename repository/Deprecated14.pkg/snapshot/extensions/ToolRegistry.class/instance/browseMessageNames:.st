
!ToolRegistry methodsFor: '*deprecated14'!
browseMessageNames: aString
	self deprecated: 'Use Smalltalk tools messageNames then a specific protocol like methodBrowserSearchingFor:' on: '18 January 2012' in: 'Pharo1.4'.
	self using: #messageNames do: [:tool | 
		^ (tool methodBrowserSearchingFor: aString) openInWorld
		]
! !
