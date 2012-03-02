
!ScriptLoader methodsFor: 'generate scripts/methods'!
writeCS: extensionAndNumber forUpdate: updateNumber withName: aSt
	"ScriptLoader new writeCS: '-md.2929' forUpdate: 7049 withName: 'cleanUpMethods'"
	

	FileDirectory default 
		forceNewFileNamed:  updateNumber asString, 'update', aSt, '.cs'
		do: [ :stream | self generateCS: extensionAndNumber fromUpdate: updateNumber on: stream].
! !
