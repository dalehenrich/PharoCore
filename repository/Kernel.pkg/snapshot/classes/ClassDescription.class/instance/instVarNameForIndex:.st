
!ClassDescription methodsFor: 'instance variables'!
instVarNameForIndex: index
	"Answer the named instance variable with index index or nil if none."

	| superInstSize |
	index > self instSize ifTrue: [^nil].
	superInstSize := superclass isNil ifTrue: [0] ifFalse: [superclass instSize].
	index > superInstSize ifTrue:
		[^instanceVariables at: index - superInstSize].
	superclass isNil ifTrue: [^nil].
	^superclass instVarNameForIndex: index

	"(Object allSubclasses select:
		[:cls| cls instSize > cls superclass instSize and: [cls subclasses isEmpty and: [cls superclass instSize > 0]]]) collect:
			[:cls| (1 to: cls instSize) collect: [:i| cls instVarNameForIndex: i]]"! !
