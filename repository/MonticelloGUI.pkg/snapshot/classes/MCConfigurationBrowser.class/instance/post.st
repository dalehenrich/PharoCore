
!MCConfigurationBrowser methodsFor: 'actions'!
post
	"Take the current configuration and post an update"

	| name update managers names choice |
	(self checkRepositories and: [ self checkDependencies ])
		ifFalse: [ ^ self ].
	name := UIManager default
		request: 'Update name (.cs) will be appended):' translated
		initialAnswer: (self configuration name ifNil: [ '' ]).
	name isEmptyOrNil
		ifTrue: [ ^ self ].
	self configuration name: name.
	update := MCPseudoFileStream on: (String new: 100).
	update localName: name , '.cs'.
	update nextPutAll: '"Change Set:		' , name.
	update
		cr;
		nextPutAll: 'Date:			' , Date today printString.
	update
		cr;
		nextPutAll: 'Author:			Posted by Monticello'.
	update
		cr;
		cr;
		nextPutAll: 'This is a configuration map created by Monticello."'.
	update
		cr;
		cr;
		nextPutAll: '(MCConfiguration fromArray: #'.
	self configuration fileOutOn: update.
	update nextPutAll: ') upgrade.'.
	update position: 0.
	managers := Smalltalk globals at: #UpdateManager ifPresent: [ :mgr | mgr allRegisteredManagers ].
	managers ifNil: [ managers := #() ].
	managers size > 0
		ifTrue: [ 
			| servers index |
			servers := ServerDirectory groupNames.
			names := (managers collect: [ :each | each packageVersion ]) , servers.
			index := UIManager default chooseFrom: names lines: {(managers size)}.
			index = 0
				ifTrue: [ ^ self ].
			index <= managers size
				ifTrue: [ 
					| mgr |
					mgr := managers at: index.
					^ mgr publishUpdate: update ].
			choice := names at: index ]
		ifFalse: [ 
			names := ServerDirectory groupNames.
			choice := UIManager default chooseFrom: names values: names.
			choice ifNil: [ ^ self ] ].
	(ServerDirectory serverInGroupNamed: choice) putUpdate: update! !
