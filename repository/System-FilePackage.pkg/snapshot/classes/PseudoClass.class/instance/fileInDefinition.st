
!PseudoClass methodsFor: 'filein/fileout'!
fileInDefinition
	self hasDefinition ifFalse:[^self].
	(self makeSureSuperClassExists: (definition copyUpTo: Character space)) ifFalse:[^self].
	self hasDefinition ifTrue:[
		Transcript cr; show:'Defining ', self name.
		self evaluate: self definition].
	self exists ifFalse:[^self].
	self hasComment ifTrue:[self realClass classComment: self comment].! !
