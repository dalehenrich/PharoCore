
!SoundService class methodsFor: 'settings'!
soundEnabled
	"By default we expect zero or one sound provider. When there is one we delegate to it."
	| system |
	system := self registeredClasses.
	system ifEmpty: [^self defaultSoundEnabled].
	^ system first soundEnabled! !
