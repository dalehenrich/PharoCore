
!BreakpointManager class methodsFor: 'intialization-release'!
clear
 	"BreakpointManager clear"

 	self installed associations do: [:entry |
		self unInstall: entry key].
		
		! !
