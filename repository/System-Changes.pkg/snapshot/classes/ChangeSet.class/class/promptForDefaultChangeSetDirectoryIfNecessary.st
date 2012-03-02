
!ChangeSet class methodsFor: 'defaults'!
promptForDefaultChangeSetDirectoryIfNecessary
	"Check the Preference (if any), and prompt the
	user to change it if necessary.
	The default if the Preference is unset is the current
	directory. Answer the directory."
	"ChangeSet
	promptForDefaultChangeSetDirectoryIfNecessary"
	| choice directoryName dir message |
	directoryName := self defaultChangeSetDirectoryName.
	[dir := FileDirectory default directoryNamed: directoryName.
	dir exists] 
		whileFalse: [message := 'The preferred change set directory' translated , ' (''{1}'') ' , 'does not exist.' translated , '
' , 'Create it or use the default directory' translated , ' ({2})?' format: {directoryName. FileDirectory default pathName}.
			choice := UIManager default
						chooseFrom: (#('Create directory' 'Use default directory and forget preference' 'Choose another directory' )
								collect: [:ea | ea translated])
						message: message.
			choice = 1
				ifTrue: [dir assureExistence].
			choice = 3
				ifTrue: [dir := UIManager default chooseDirectory.
					directoryName := dir
								ifNil: ['']
								ifNotNil: [dir pathName]]].
	self defaultChangeSetDirectory: directoryName.
	^ dir! !
