
!FileContentsBrowser methodsFor: '*Shout-Styling'!
shoutAboutToStyle: aPluggableShoutMorphOrView 
	self shoutIsModeStyleable
		ifFalse: [^ false].
	aPluggableShoutMorphOrView classOrMetaClass: self selectedClassOrMetaClass.
	^ true! !
