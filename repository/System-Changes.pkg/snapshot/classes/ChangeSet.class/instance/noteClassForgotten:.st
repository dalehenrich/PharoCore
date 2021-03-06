
!ChangeSet methodsFor: 'class changes'!
noteClassForgotten: className
	"Remove from structures if class is not a superclass of some other one we are remembering"

	structures ifNil: [ ^ self ].
	Smalltalk globals
		at: className
		ifPresent: [ :cls | 
			cls subclasses
				do: [ :sub | 
					(structures includesKey: sub)
						ifTrue: [ ^ self ] ] ].	"No delete"
	structures removeKey: className ifAbsent: [  ]! !
