
!RGElementDefinition class methodsFor: 'class initialization'!
realClass: aClass
	"The argument is a Smalltalk class and the parent of a method, variable, class comment.
	However it is not set as parent but only its name and scope (instance/class)"

	^self new
		setParentInfo: aClass;
		yourself! !
