
!Behavior methodsFor: 'private'!
becomeUncompact
	| cct index |
	cct := Smalltalk compactClassesArray.
	(index := self indexIfCompact) = 0
		ifTrue: [^ self].
	(cct includes: self)
		ifFalse: [^ self halt  "inconsistent state"].
	self checkCanBeUncompact. 
	"Update instspec so future instances will not be compact"
	format := format - (index bitShift: 11).
	"Make up new instances and become old ones into them"
	self updateInstancesFrom: self.
	"Make sure there are no compact ones left around"
	Smalltalk garbageCollect.
	"Remove this class from the compact class table"
	cct at: index put: nil.
! !
