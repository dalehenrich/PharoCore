
!GoferOperationTest methodsFor: 'testing'!
testUnload
	gofer package: 'GoferFoo'; load.
	self shouldnt: [ gofer unload ] raise: Error.
	self deny: (self hasPackage: 'GoferFoo').
	self deny: (self hasClass: #GoferFoo)! !
