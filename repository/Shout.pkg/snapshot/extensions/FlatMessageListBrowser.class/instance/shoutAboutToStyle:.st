
!FlatMessageListBrowser methodsFor: '*Shout-Styling'!
shoutAboutToStyle: aPluggableShoutMorphOrView

	aPluggableShoutMorphOrView classOrMetaClass: self selectedClassOrMetaClass.
	self preference = self sourceLabel
		ifTrue: [^ true].
	self preference = self byteCodeLabel
		ifTrue: [^ false].
	self preference = self infoLabel
		ifTrue: [	^ false].
	self preference = self diffLabel 
		ifTrue: [^ true].
	^ false! !
