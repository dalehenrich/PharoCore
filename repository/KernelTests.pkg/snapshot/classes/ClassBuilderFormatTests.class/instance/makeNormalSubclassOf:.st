
!ClassBuilderFormatTests methodsFor: 'utilities'!
makeNormalSubclassOf: aClass
	subClass := aClass subclass: self subClassName
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses! !
