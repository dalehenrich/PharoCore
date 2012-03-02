
!UpdateStreamer methodsFor: '*ScriptLoader14'!
updateFromServerSilently
	| pair failed loaded |
	pair := self elementaryReadServerUpdates.
	failed := pair first.
	loaded := pair second.
	failed ifNil: [ ^ true ].
	^ false! !
