
!FinderUI methodsFor: '*Shout-Styling'!
shoutAboutToStyle: aPluggableShoutMorphOrView

	aPluggableShoutMorphOrView classOrMetaClass: self selectedClass.
	self selectedClass isNil
		ifTrue: [	^ false].
	self selectedMethod isNil
		ifTrue: [^ false].
	^ true! !
