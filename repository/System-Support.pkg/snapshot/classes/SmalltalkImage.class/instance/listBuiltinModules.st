
!SmalltalkImage methodsFor: 'modules'!
listBuiltinModules
	"SmalltalkImage current listBuiltinModules"
	"Return a list of all builtin modules (e.g., plugins). Builtin plugins are those that are 	compiled with the VM directly, as opposed to plugins residing in an external shared library. 	The list will include all builtin plugins regardless of whether they are currently loaded 
	or not. Note that the list returned is not sorted!!"

	| modules index name |
	modules := Array new writeStream.
	index := 1.
	[true] whileTrue:[
		name := self listBuiltinModule: index.
		name ifNil:[^modules contents].
		modules nextPut: name.
		index := index + 1.
	].! !
