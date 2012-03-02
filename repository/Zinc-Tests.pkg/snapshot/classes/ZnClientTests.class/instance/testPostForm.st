
!ZnClientTests methodsFor: 'testing'!
testPostForm
	| client |
	self withServerDo: [
		(client := ZnClient new)
			url: self serverUrl;
			addPath: 'echo';
			formAt: 'username' put: 'john';
			formAdd: 'password' -> 'secret';
			post.
		self assert: client isSuccess.
		self assert: (client contents includesSubString: 'john').
		self assert: (client contents includesSubString: 'secret') ]! !
