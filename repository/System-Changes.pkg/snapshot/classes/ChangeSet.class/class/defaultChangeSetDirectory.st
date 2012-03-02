
!ChangeSet class methodsFor: 'defaults'!
defaultChangeSetDirectory
	"Answer the directory in which to store ChangeSets. 
	Answer the default directory if the preferred directory doesn't exist."
	| dir directoryName |
	directoryName := self defaultChangeSetDirectoryName.
	dir := directoryName isEmptyOrNil
		ifTrue: [ FileDirectory default ]
		ifFalse: [ FileDirectory default directoryNamed: directoryName ].
	dir exists
		ifTrue: [^ dir].
	^ FileDirectory default! !
