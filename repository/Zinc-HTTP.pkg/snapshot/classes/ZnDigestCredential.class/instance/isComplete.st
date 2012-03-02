
!ZnDigestCredential methodsFor: 'testing'!
isComplete 
	^ super isComplete & nonce notNil ! !
