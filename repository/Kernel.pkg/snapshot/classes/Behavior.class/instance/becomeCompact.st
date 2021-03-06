
!Behavior methodsFor: 'private'!
becomeCompact
	"Here are the restrictions on compact classes in order for export segments to work:  A compact class index may not be reused.  If a class was compact in a release of Pharo, no other class may use that index.  The class might not be compact later, and there should be nil in its place in the array."
	| cct index |

	self isWeak ifTrue: [^ Halt halt: 'You must not make a weak class compact'].
	cct := Smalltalk compactClassesArray.
	(self isCompact or: [cct includes: self])
		ifTrue: [^ self halt: self name , 'is already compact'].
	index := cct indexOf: nil
		ifAbsent: [^ self halt: 'compact class table is full'].
	"Install this class in the compact class table"
	cct at: index put: self.
	"Update instspec so future instances will be compact"
	format := format + (index bitShift: 11).
	"Make up new instances and become old ones into them"
	self updateInstancesFrom: self.
	"Purge any old instances"
	Smalltalk garbageCollect.! !
