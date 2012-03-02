
!SmalltalkImage class methodsFor: 'initialization'!
initialize
	"SmalltalkImage initialize"

	self initializeStartUpList.
	self initializeShutDownList.
	Smalltalk addToStartUpList: SmalltalkImage! !
