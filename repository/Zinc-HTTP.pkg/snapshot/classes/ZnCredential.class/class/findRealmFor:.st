
!ZnCredential class methodsFor: 'accessing'!
findRealmFor: anAuthHeader
	(anAuthHeader subStrings: ',') do: [ :token |
		"String>>trimBoth: is a grease method, so not sure if we should be using it."
		(token includesSubString: 'realm=') 
			ifTrue: [ ^ ((token subStrings: '=') second) ] ].
	^ nil! !
