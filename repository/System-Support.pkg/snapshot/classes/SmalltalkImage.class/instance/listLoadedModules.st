
!SmalltalkImage methodsFor: 'modules'!
listLoadedModules
	"SmalltalkImage current listLoadedModules"
	"Return a list of all currently loaded modules (e.g., plugins). Loaded modules are those that currently in use (e.g., active). The list returned will contain all currently active modules regardless of whether they're builtin (that is compiled with the VM) or external (e.g., residing in some external shared library). Note that the returned list is not sorted!!"
	| modules index name |
	modules := Array new writeStream.
	index := 1.
	[true] whileTrue:[
		name := self listLoadedModule: index.
		name ifNil:[^modules contents].
		modules nextPut: name.
		index := index + 1.
	].! !
