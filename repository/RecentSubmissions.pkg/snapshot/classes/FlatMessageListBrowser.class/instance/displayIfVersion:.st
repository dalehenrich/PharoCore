
!FlatMessageListBrowser methodsFor: 'text'!
displayIfVersion: aMessageListInspectableNode

	^'Version ', (self model versionOfAMethod: aMessageListInspectableNode item) asString! !
