
!Trait methodsFor: 'compiling'!
binding
	^ self environment associationAt: name ifAbsent: [ nil -> self ]! !
