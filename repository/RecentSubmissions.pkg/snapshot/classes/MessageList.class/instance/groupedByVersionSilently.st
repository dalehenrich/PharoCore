
!MessageList methodsFor: 'converting'!
groupedByVersionSilently
	"update the instance variable"
	
	| association |
	association := self buildByVersion.
	self dictionary: association key.
	self sortedMethodReferencesList: association value.
	self sortingSelector: self byVersionSelector.! !
