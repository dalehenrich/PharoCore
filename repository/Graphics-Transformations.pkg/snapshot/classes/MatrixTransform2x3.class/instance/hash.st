
!MatrixTransform2x3 methodsFor: 'comparing'!
hash
	| result |
	<primitive: 'primitiveHashArray' module: 'FloatArrayPlugin'>
	result := 0.
	1 
		to: self size
		do: [ :i | result := result + (self basicAt: i) ].
	^ result bitAnd: 536870911! !
