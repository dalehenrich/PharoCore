
!ClassBuilderFormatTests methodsFor: 'utilities'!
makeWeakSubclassOf: aClass
	subClass := aClass weakSubclass: self subClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses! !
