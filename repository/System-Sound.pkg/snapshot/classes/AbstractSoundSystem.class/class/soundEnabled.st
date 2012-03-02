
!AbstractSoundSystem class methodsFor: 'preference access'!
soundEnabled
	^ SoundEnabled ifNil: [SoundEnabled := false]! !
