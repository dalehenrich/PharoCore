
!Debugger class methodsFor: 'utilities'!
closeAllDebuggers
	"Debugger closeAllDebuggers"
	(SystemWindow allSubInstances select: [:w | 
		w model isKindOf: self ])
			do: [:w | w delete]! !
