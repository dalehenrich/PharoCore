
!UITheme methodsFor: 'initialize-release'!
initialize
	"Initialize the receiver."

	super initialize.
	self
		initializeForms;
		settings: self defaultSettings! !
