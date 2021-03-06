
!MethodFinder methodsFor: 'tests'!
verify
	"Test a bunch of examples"
	"	MethodFinder new verify    "
	Approved ifNil: [self initialize].	"Sets of allowed selectors"

(MethodFinder new load: #(('abcd') $a  ('TedK') $T)
	) searchForOne asArray = #('data1 asCharacter' 'data1 first' 'data1 anyOne')
		 ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #(('abcd' 1) $a  ('Ted ' 3) $d )
	) searchForOne asArray = #('data1 at: data2' 'data1 atPin: data2' 'data1 atWrap: data2')
		ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #(((12 4 8)) 24  ((1 3 6)) 10 )
	) searchForOne asArray=  #('data1 sum') ifFalse: [self error: 'should have found it'].	
		"note extra () needed for an Array object as an argument"


(MethodFinder new load: #((4) 4  (-10) 10 (-3) 3 (2) 2 (-6) 6 (612) 612)
	) searchForOne asArray = #('data1 abs') ifFalse: [self error: 'should have found it'].
(MethodFinder new load: {#(4 3). true.  #(-7 3). false.  #(5 1). true.  #(5 5). false}
	) searchForOne asArray = #('data1 > data2') ifFalse: [self error: 'should have found it'].	



(MethodFinder new load: #((12 4 8) 2  (1 3 6) 2  (5 2 16) 8)
	) searchForOne asArray = #()     " '(data3 / data2) ' want to be able to leave out args"  
		ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #((0.0) 0.0  (1.5) 0.997495  (0.75) 0.681639)
	) searchForOne asArray = #('data1 sin') ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #((7 5) 2   (4 5) 4   (-9 4) 3)
	) searchForOne asArray = #('data1 \\ data2') ifFalse: [self error: 'should have found it'].	

(MethodFinder new load: #((7) 2   (4) 2 )
	) searchForOne asArray = #('^ 2')  ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: {#(7). true.   #(4.1).  true.   #(1.5). false}
	) searchForOne asArray = #('data1 >= 4.1') ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #((35) 3   (17) 1   (5) 5)
	) searchForOne asArray = #('data1 \\ 8') ifFalse: [self error: 'should have found it'].	
(MethodFinder new load: #((36) 7   (50) 10 )
	) searchForOne asArray = #('data1 quo: 5' 'data1 // 5') ifFalse: [
		self error: 'should have found it'].	
(MethodFinder new load: #( ((2 3) 2) 8   ((2 3) 5) 17 )
	) searchForOne asArray = #('data1 polynomialEval: data2') ifFalse: [
		self error: 'should have found it'].	
(MethodFinder new load: #((2) 8   (5) 17 )
	) searchForOne asArray = #('#(2 3) polynomialEval: data1') ifFalse: [
		self error: 'should have found it'].	
! !
