
!DummySoundSystem class methodsFor: 'initialization'!
unload
	SoundService registeredClasses do: [:ss |
		(ss isKindOf: self) ifTrue: [SoundService unregister: ss]].! !
