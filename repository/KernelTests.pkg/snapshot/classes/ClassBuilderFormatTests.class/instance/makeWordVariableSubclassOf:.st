
!ClassBuilderFormatTests methodsFor: 'utilities'!
makeWordVariableSubclassOf: aClass
	subClass := aClass variableWordSubclass: self subClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses! !
