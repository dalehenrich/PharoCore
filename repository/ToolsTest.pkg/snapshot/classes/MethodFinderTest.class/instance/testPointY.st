
!MethodFinderTest methodsFor: 'test examples'!
testPointY
	"self debug: #testPointY"
	
	self assert: (MethodFinder new load: {{Point x: 3 y: 4}. 4.  {Point x: 1 y: 5}. 5}) searchForOne asArray = #('data1 max' 'data1 y').
	self assert: (MethodFinder new load: {{Point x: 5 y: 4}. 4.  {Point x: 1 y: 5}. 5}) searchForOne asArray = #( 'data1 y').! !
