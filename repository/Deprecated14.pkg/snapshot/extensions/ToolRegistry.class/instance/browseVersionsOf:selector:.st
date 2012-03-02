
!ToolRegistry methodsFor: '*deprecated14'!
browseVersionsOf: aClass selector: aSelector
	"Open a browser"
	self deprecated: 'Use Smalltalk tools versionBrowser then a specific protocol like browseVersionsOf:class:meta:category:selector:' on: '19 January 2012' in: 'Pharo1.4'.
	self using: #versionBrowser do: [:tool | 
		tool
			browseVersionsOf: (aClass compiledMethodAt: aSelector)
			class: aClass theNonMetaClass
			meta: aClass isMeta
			category: (aClass organization categoryOfElement: aSelector)
			selector: aSelector ]! !
