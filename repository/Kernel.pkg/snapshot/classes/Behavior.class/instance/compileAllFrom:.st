
!Behavior methodsFor: 'compiling'!
compileAllFrom: oldClass
	"Compile all the methods in the receiver's method dictionary.
	This validates sourceCode and variable references and forces
	all methods to use the current bytecode set"
	
	| binding |
	oldClass selectorsDo: [:sel | self recompile: sel from: oldClass].
	 "Ensure that we share a common binding after recompilation. This is so that ClassBuilder reshapes avoid creating new bindings for every method when recompiling a large class hierarchy."
	binding := self binding.
	self methodsDo: [:m| m methodClassAssociation == binding 
								ifFalse: [m methodClassAssociation: binding ]].
! !
