
!ClassFactoryWithOrganization methodsFor: 'creating'!
newSubclassOf: aClass instanceVariableNames: ivNamesString classVariableNames:  classVarsString category: category

	| newClass |
	newClass := (ClassBuilder new)
		name: self newName 
		inEnvironment: self organization environment
		subclassOf: aClass
		type: aClass typeOfClass
		instanceVariableNames: ivNamesString
		classVariableNames: classVarsString
		poolDictionaries: ''
		category: category asSymbol.
	self createdClasses add: newClass.
	^newClass! !
