
!ScriptLoader methodsFor: 'utils'!
shortImageName
	"should be removed when the version  will be integrated in SmalltalkImage"
	
	^ FileDirectory baseNameFor: (FileDirectory default localNameFor: Smalltalk imageName).! !
