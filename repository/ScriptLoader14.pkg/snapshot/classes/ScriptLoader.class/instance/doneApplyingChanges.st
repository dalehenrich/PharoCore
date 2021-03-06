
!ScriptLoader methodsFor: 'menu integration actions'!
doneApplyingChanges
	| comment commentQuoted st |
	SmalltalkImage current saveSession.
		"now you can reopen prior to publishing to fix :)"
	self saveAsNewImageWithCurrentReleaseNameToPublish.
	
	comment := UIManager default
		multiLineRequest: 'Comment for this update.'
		initialAnswer: self commentForCurrentUpdate
		answerHeight: 200.
	comment ifNil: [^ self].
	
	commentQuoted := comment copyReplaceAll: (String with: $') with: (String with: $' with: $').
	st := String new writeStream.
	st nextPutAll: 'commentForCurrentUpdate'; cr.
	st nextPutAll: ' ^ '.
	st nextPut: $'.
	st nextPutAll: commentQuoted.
	st nextPut: $'.
	self class
		compile: (st contents)
		classified: 'public'.

	self class waitingCacheFolder deleteLocalFiles.
	self saveChangedPackagesIntoWaitingFolder.
	self generateScriptAndUpdateMethodForNewVersion.
	self saveLatestScriptLoaderToWaitingFolder.
	
	self inform: 'Update prepared and ready to be verified.'! !
