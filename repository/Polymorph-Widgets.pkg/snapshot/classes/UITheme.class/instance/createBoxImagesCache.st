
!UITheme methodsFor: 'scrollbars'!
createBoxImagesCache
	"creates the cache to store the arrow forms"
	^ LRUCache
		size: 20
		factory: [:key | self createBoxOfSize: key first color: key second]! !
