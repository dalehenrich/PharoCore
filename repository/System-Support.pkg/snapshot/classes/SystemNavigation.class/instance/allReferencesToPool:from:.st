
!SystemNavigation methodsFor: 'query'!
allReferencesToPool: aPool from: aClass
	"Answer all the references to variables from aPool"
	
	| list |
	list := OrderedCollection new.
	aClass withAllSubclassesDo: [ :cls |
		cls selectorsAndMethodsDo: [ :sel :meth| | ref |
			ref := meth literals detect: [ :lit |
				lit isVariableBinding and:[(aPool bindingOf: lit key) notNil]] ifNone: [nil].
			ref ifNotNil: [ list add: (self createMethodNamed: sel realParent: aClass) ]]].
	^list! !
