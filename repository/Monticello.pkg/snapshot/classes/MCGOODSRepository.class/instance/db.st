
!MCGOODSRepository methodsFor: 'as yet unclassified'!
db
	(connection isNil or: [ connection isConnected not ])
		ifTrue: [ connection := Smalltalk globals at: #KKDatabase ifPresent: [ :cl | cl onHost: hostname port: port ] ].
	^ connection! !
