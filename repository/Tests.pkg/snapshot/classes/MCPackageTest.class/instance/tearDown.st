
!MCPackageTest methodsFor: 'running'!
tearDown
	self mockSnapshot install.
	DataStream initialize "MCMockClassG ends up in the DataStream TypeMap -- we need to reset"! !
