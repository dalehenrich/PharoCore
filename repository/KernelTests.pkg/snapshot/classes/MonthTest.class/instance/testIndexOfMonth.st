
!MonthTest methodsFor: 'Tests'!
testIndexOfMonth
	"self debug: #testIndexOfMonth"
       | m |
       m := #(#January #February #March #April #May #June #July #August
#September #October #November #December).

       m withIndexDo: [:item :index | self assert: (Month indexOfMonth:
item) = index].

       self should: [Month indexOfMonth: 1] raise: TestResult error.
       self should: [Month indexOfMonth: #Marsh] raise: TestResult error.
"notice the misspell!!!!"
       self should: [Month indexOfMonth: #UnexistingMonth] raise:
TestResult error.! !
