
!GoferMerge methodsFor: 'running'!
execute
	[ self model merge ]
		on: MCMergeResolutionRequest
		do: [ :request |
			request merger conflicts isEmpty
				ifTrue: [ request resume: true ]
				ifFalse: [ request pass ]].
	self gofer cleanup! !
