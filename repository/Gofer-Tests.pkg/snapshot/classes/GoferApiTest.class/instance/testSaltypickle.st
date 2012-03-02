
!GoferApiTest methodsFor: 'testing-repositories-places'!
testSaltypickle
	gofer saltypickle: 'GraphViz'.
	self assert: gofer repositories: #('http://squeak.saltypickle.com/GraphViz')! !
