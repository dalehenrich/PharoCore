
!ZnBasicAuthenticator methodsFor: 'testing'!
isRequestAuthenticated: request
	| authorization username password |
	authorization := (request headers at: 'Authorization' ifAbsent: [ ^ false ]) findTokens: ' '.
	(authorization size = 2 and: [ authorization first = 'Basic' ]) ifFalse: [ ^ false ].
	authorization := (ZnUtils decodeBase64: authorization second) findTokens: ':'.
	authorization size = 2 ifFalse: [ ^ false ].
	username := authorization first.
	password := authorization second.
	^ (credentials at: username ifAbsent: [ nil ]) = password
	! !
