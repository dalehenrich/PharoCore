
!MessageListBrowser methodsFor: '*Shout-Styling'!
shoutAboutToStyle: aPluggableShoutMorphOrView
	| cls |
	self selectedNode ifNil: [^false].
	cls  := self selectedNode isInspectable ifTrue: [self selectedNode getClass].
	aPluggableShoutMorphOrView classOrMetaClass: cls.
	self preference = self sourceLabel
		ifTrue: [^ true].
	self preference = self byteCodeLabel
		ifTrue: [^ false].
	self preference = self infoLabel
		ifTrue: [	^ false].
	self preference = self versionLabel
		ifTrue:[ ^ false].
	self preference = self diffLabel 
		ifTrue: [^ false].
! !
