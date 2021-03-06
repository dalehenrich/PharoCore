
!Class methodsFor: 'compiling'!
innerBindingOf: aSymbol
	"Answer the binding of some variable resolved in the scope of the receiver, or one of its superclass
	but do not look up binding in receiver's environment.
	Use #bindingOf: for looking up the variable binding in a full scope, including receiver's environment"
	
	| binding |

	"First look in classVar dictionary."
	binding := self classPool bindingOf: aSymbol.
	binding ifNotNil: [^binding].

	"Next look in shared pools."
	self sharedPools do: [:pool | 
		| aBinding |
		aBinding := pool bindingOf: aSymbol.
		aBinding ifNotNil: [^aBinding ].
	].

	superclass ifNotNil: [
		^ superclass innerBindingOf: aSymbol.
	].	
	^ nil! !
