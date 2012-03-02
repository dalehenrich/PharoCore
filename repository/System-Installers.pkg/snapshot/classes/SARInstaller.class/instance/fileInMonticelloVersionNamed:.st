
!SARInstaller methodsFor: 'client services'!
fileInMonticelloVersionNamed: memberName
	"This is to be used from preamble/postscript code to file in zip 
	members as Monticello version (.mcv) files."

	| member newCS mcMcvReader |
	mcMcvReader := Smalltalk globals at: #MCMcvReader ifAbsent: [  ].
	member := self memberNamed: memberName.
	member ifNil: [ ^ self errorNoSuchMember: memberName ].
	self class
		withCurrentChangeSetNamed: member localFileName
		do: [ :cs | 
			newCS := cs.
			(mcMcvReader versionFromStream: member contentStream ascii) load ].
	newCS isEmpty
		ifTrue: [ ChangeSet removeChangeSet: newCS ].
	World doOneCycle.
	self installed: member! !
