
!PackageDependencyTest methodsFor: 'test utility'!
testPackage: pkgName dependsExactlyOn: pkgList
	"Ensure that the package with the given name depends only on the packages in pkgList.
	NOTE: If you use this for fixing dependencies, classDeps includes the classes
	and users from the package(s) not declared as dependents. Basically, you need
	to fix all the references in classDeps to make the test pass."
	
	| classDeps pi pkgDeps |
	classDeps := IdentityDictionary new.
	pi := PackageOrganizer default packageNamed: pkgName ifAbsent:[^self]. "unloaded"
	pi classes do: [ :pkgClass | 
		(classDeps at: (pkgClass superclass ifNil: [ProtoObject]) 
			ifAbsentPut:[OrderedCollection new]) add: pkgClass name, ' superclass'.].
	pi methods do: [ :mref | | cm |
		cm := mref compiledMethod.
		1 to: cm numLiterals do: [ :i | | lit |
			((lit := cm literalAt: i) isVariableBinding 
				and:[lit value isBehavior]) ifTrue:[(classDeps at: lit value ifAbsentPut:[OrderedCollection new]) add: cm methodClass asString, '>>', cm selector]]].
	pkgDeps := Dictionary new.
	classDeps keys do: [ :aClass | | pkg |
		pkg := PackageOrganizer default packageOfClass: aClass ifNone:[nil].
		pkg ifNil: [
				Transcript cr; show: 'WARNING: No package for ', aClass.
				(classDeps removeKey: aClass) do:[:each| Transcript crtab; show: each]] 
			ifNotNil: [(pkgDeps at: pkg name ifAbsentPut:[OrderedCollection new]) add: aClass]].
	(pkgDeps removeKey: pkgName ifAbsent: [#()]) 
		do: [ :aClass | classDeps removeKey: aClass ifAbsent: []].
	pkgList do: [ :pkg |
		self assert: (pkgDeps includesKey: pkg) description: pkgName, ' no longer depends on ', pkg.
		(pkgDeps removeKey: pkg ifAbsent: [#()]) 
			do: [ :aClass | classDeps removeKey: aClass ifAbsent:[]]].
		
	classDeps keysAndValuesDo: [ :class :deps |
		Transcript cr; show: class name, ' dependencies:'.
		deps do: [ :each | Transcript crtab; show: each]].
	self assert: pkgDeps isEmpty
		description: pkgName, ' now depends on ', pkgDeps.
! !
