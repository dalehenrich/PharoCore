
!ToolRegistry methodsFor: '*deprecated14'!
browseChangeSetsWithClass: aClass selector: aSelector
	"Browse all the change sets with the given class/selector"
	self deprecated: 'Use Smalltalk tools changeSorter then a specific protocol like browseChangeSetsWithClass:selector:' on: '18 January 2012' in: 'Pharo1.4'.
	self using: #changeSorter do: [:tool |
		^ tool browseChangeSetsWithClass: aClass selector: aSelector ]
! !
