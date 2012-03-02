
!SARInstaller methodsFor: 'filein'!
fileIn
	"File in to a change set named like my file"
	| newCS |
	directory 
		readOnlyFileNamed: fileName 
		do: [:stream | 
				self class withCurrentChangeSetNamed: fileName
					do: [:cs | newCS := cs. self fileInFrom: stream].
				newCS isEmpty ifTrue: [ ChangeSet removeChangeSet: newCS ]]! !
