
!PluggableListItemWrapper methodsFor: 'accessing'!
contents
	getContentsSelector ifNil:[^#()].
	^self sendToModel: getContentsSelector.! !
