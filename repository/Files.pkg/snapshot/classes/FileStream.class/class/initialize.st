
!FileStream class methodsFor: 'initialize-release'!
initialize
	TheStdioHandles := Array new: 3.
	
	"original comment was: the intent being before: AutoStart"
	Smalltalk
		addToStartUpList: self after: FileDirectory; 
		addToShutDownList: self after: FileDirectory! !
