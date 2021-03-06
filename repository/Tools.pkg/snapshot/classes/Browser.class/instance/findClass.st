
!Browser methodsFor: 'system category functions'!
findClass
	"Search for a class from a pattern or from the recent list"
	| pattern foundClassOrTrait recentList |

	self okToChange ifFalse: [^ self classNotFound].
	recentList := RecentClasses select: [ :n | Smalltalk globals includesKey: n ].
	
	foundClassOrTrait := ClassSearch chooseFromOwner: self dependents first.
	foundClassOrTrait ifNil: [^ self classNotFound].
 	self selectCategoryForClass: foundClassOrTrait.
	self selectClass: foundClassOrTrait
! !
