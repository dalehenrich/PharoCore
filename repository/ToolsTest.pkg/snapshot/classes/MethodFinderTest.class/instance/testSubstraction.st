
!MethodFinderTest methodsFor: 'test examples'!
testSubstraction
	"self debug: #testSubstraction"
	
	self assert: (MethodFinder new load: #((14 3) 11  (-10 5) -15  (4 -3) 7)) searchForOne asArray = #('data1 - data2')! !
