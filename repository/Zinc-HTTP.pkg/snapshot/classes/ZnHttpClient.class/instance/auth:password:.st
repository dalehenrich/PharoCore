
!ZnHttpClient methodsFor: 'accessing'!
auth: username password: password
	| cred |
	cred := ZnBasicCredential new
				username: username;
				password: password;
				domain: self url authority;
				yourself.
	self session addCredential: cred! !
