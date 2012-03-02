
!ClassBuilderFormatTests methodsFor: 'testing'!
testDuplicateInstanceVariableError
       baseClass := Object subclass: self baseClassName
               instanceVariableNames: 'var'
               classVariableNames: ''
               poolDictionaries: ''
              category: self categoryNameForTemporaryClasses.

       self should:[
               subClass := baseClass subclass: self subClassName
                       instanceVariableNames: 'var'
                       classVariableNames: ''
                       poolDictionaries: ''
                      category: self categoryNameForTemporaryClasses
       ] raise: DuplicatedVariableError.

       [subClass := baseClass subclass: self subClassName
                       instanceVariableNames: 'var'
                       classVariableNames: ''
                       poolDictionaries: ''
                      category: self categoryNameForTemporaryClasses
       ] on: DuplicatedVariableError do:[:ex|
               self assert: ex superclass == baseClass.
               self assert: ex variable = 'var'.
               ex resume.
       ].

       self shouldnt:[
               baseClass := Object subclass: self baseClassName
                       instanceVariableNames: ''
                       classVariableNames: ''
                       poolDictionaries: ''
                      category: self categoryNameForTemporaryClasses.
       ] raise: Error.! !
