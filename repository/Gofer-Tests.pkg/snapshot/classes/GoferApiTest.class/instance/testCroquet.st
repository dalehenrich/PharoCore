
!GoferApiTest methodsFor: 'testing-repositories-places'!
testCroquet
	gofer croquet: 'Hermes'.
	self assert: gofer repositories: #('http://hedgehog.software.umn.edu:8888/Hermes')! !
