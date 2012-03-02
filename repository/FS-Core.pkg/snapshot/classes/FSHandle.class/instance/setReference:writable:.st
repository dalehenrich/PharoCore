
!FSHandle methodsFor: 'initialize-release'!
setReference: aReference writable: aBoolean
	reference := aReference resolve.
	writable := aBoolean! !
