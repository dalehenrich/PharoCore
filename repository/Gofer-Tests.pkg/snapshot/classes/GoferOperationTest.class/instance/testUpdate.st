
!GoferOperationTest methodsFor: 'testing'!
testUpdate
	| initial |
	initial := gofer copy.
	initial version: 'GoferFoo-lr.1'; load.
	gofer package: 'GoferFoo'.
	self shouldnt: [ gofer update ] raise: Error.
	self assert: (self hasVersion: 'GoferFoo-lr.4')! !
