
!ClassBuilderFormatTests methodsFor: 'testing'!
testDuplicateClassVariableError
	baseClass := Object subclass: self baseClassName
		instanceVariableNames: ''
		classVariableNames: 'TestVar'
		poolDictionaries: ''
		category: self categoryNameForTemporaryClasses.

       self should:[
		subClass := baseClass subclass: self subClassName
			instanceVariableNames: ''
			classVariableNames: 'TestVar'
			poolDictionaries: ''
			category: self categoryNameForTemporaryClasses
       ] raise: DuplicatedVariableError.

       [subClass := baseClass subclass: self subClassName
                       instanceVariableNames: ''
                       classVariableNames: 'TestVar'
                       poolDictionaries: ''
                      category: self categoryNameForTemporaryClasses
       ] on: DuplicatedVariableError do:[:ex|
               self assert: ex superclass == baseClass.
               self assert: ex variable = 'TestVar'.
               ex resume.
       ].

       self shouldnt:[
               baseClass := Object subclass: self baseClassName
                       instanceVariableNames: ''
                       classVariableNames: ''
                       poolDictionaries: ''
                      category: self categoryNameForTemporaryClasses.
       ] raise: DuplicatedVariableError.! !
