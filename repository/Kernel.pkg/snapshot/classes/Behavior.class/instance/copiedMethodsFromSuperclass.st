
!Behavior methodsFor: 'queries'!
copiedMethodsFromSuperclass
	"Returns the methods that the receiver copied with its ancestors"
	
	| methods |
	methods := OrderedCollection new.
	self methodDict valuesDo: [ :method|
		methods addAll:  (self copiedFromSuperclass: method)].
	^ methods! !
