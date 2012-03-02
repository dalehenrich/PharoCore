
!MonthTest methodsFor: 'Tests'!
testNameOfMonth

       | m |
       m := #(#January #February #March #April #May #June #July #August
#September #October #November #December).

       m withIndexDo: [:item :index | self assert: (Month nameOfMonth:
index) = item].

       self should: [Month nameOfMonth: 0] raise: TestResult error.
       self should: [Month nameOfMonth: 13] raise: TestResult error.
       self should: [Month nameOfMonth: #January] raise: TestResult error.! !
