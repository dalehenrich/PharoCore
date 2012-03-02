
!MCWorkingCopy methodsFor: 'accessing'!
closestAncestorSnapshotIn: aRepository
	
	"Returns a complete Snapshot including all required packages by recurisveliy walking all required package and trying to find the closes ancestor in the given repository"
	
	| definitions ancestorVersion|
	
	ancestorVersion := aRepository closestAncestorVersionFor: ancestry ifNone: [].
	
	definitions := ancestorVersion 
						ifNil: [ OrderedCollection new ] 
						ifNotNil: [ ancestorVersion snapshot definitions ].
	
	"TODO: do a completeSnapshot on a package"
	self requiredPackages 
		do: [ :aPackage| definitions addAll: (aPackage workingCopy closestAncestorSnapshotIn: aRepository) definitions ]
		displayingProgress: [ :item| 'Loading remote dependencies from: ', item name ].
	
	^ MCSnapshot fromDefinitions: definitions! !
