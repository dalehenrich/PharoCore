
!ZnRequest methodsFor: 'accessing'!
setBasicAuthenticationUsername: username password: password
	(username isNil | password isNil)
		ifTrue: [
			self headers removeKey: 'Authorization' ifAbsent: []]
		ifFalse: [ | authorization |
			authorization := 'Basic ', (ZnUtils encodeBase64: (username, ':', password)).
			self headers at: 'Authorization'  put: authorization ]
! !
